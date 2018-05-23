(*
 * Copyright 2017 Cedric LE MOIGNE, cedlemo@gmx.com
 * This file is part of OCaml-libmpdclient.
 *
 * OCaml-libmpdclient is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * OCaml-libmpdclient is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OCaml-libmpdclient.  If not, see <http://www.gnu.org/licenses/>.
 *)

open Lwt.Infix

type t = {connexion : Connexion_lwt.t; mpd_banner : string }

let initialize connexion =
  Connexion_lwt.read_mpd_banner connexion
  >>= fun message ->
  Lwt.return {connexion = connexion; mpd_banner = message}

let close client =
let {connexion = connexion; _} = client in
Connexion_lwt.close connexion

let mpd_banner {mpd_banner = banner; _ } =
  Lwt.return banner

let idle client =
  let {connexion = connexion; _} = client in
  let cmd = "idle\n" in
  Connexion_lwt.write connexion cmd
  >>= function
    | (-1) -> Lwt.return (Error "Connexion error: unable to write \"idle\" command.")
    | _ -> Connexion_lwt.read_idle_events connexion
           >|= fun event_name -> Ok event_name

let rec idle_loop client on_event =
  let {connexion = connexion; _} = client in
  let cmd = "idle\n" in
  Connexion_lwt.write connexion cmd
  >>= function
    | (-1) -> Lwt.return () (* TODO: Should return a meaningfull value so that the user can exit on this value. *)
    | _ -> Connexion_lwt.read_idle_events connexion
      >>= fun response ->
        on_event response
        >>= function
          | true -> Lwt.return ()
          | false -> idle_loop client on_event

let send client cmd =
  let {connexion = c; _} = client in
  Connexion_lwt.write c (cmd ^ "\n")
  >>= fun _ ->
    Connexion_lwt.read_command_response c
    >>= fun response ->
      let parsed_response = Protocol.parse_response response in
      Lwt.return parsed_response

let request client cmd =
  let {connexion = c; _} = client in
  Connexion_lwt.write c (cmd ^ "\n")
  >>= fun _ ->
    Connexion_lwt.read_request_response c
    >>= fun response ->
      let parsed_response = Protocol.parse_response response in
      Lwt.return parsed_response

let status client =
  request client "status"
  >>= function
    | Ok lines -> (
        match lines with
        | None -> Lwt.return (Error "No status")
        | Some lines' -> let status_pairs = Utils.split_lines lines' in
            let status = Status.parse status_pairs in Lwt.return (Ok status)
    )
    | Error (ack, ack_cmd_num, cmd, error_message) ->
        Lwt.return (Error error_message)

let ping client =
  send client "ping"

let password client mdp =
  send client (String.concat " " ["password"; mdp])

let noidle client =
  send client "noidle"
  (* let {connexion = connexion; _} = client in
  Connexion_lwt.write connexion "noidle\n"
  >>= fun _ ->
    Connexion_lwt.read_no_idle_response c
    >>= fun response ->
      let parsed_response = Protocol.parse_response response in
      Lwt.return parsed_response *)
