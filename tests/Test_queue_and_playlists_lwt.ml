(*
 * Copyright 2017-2018 Cedric LE MOIGNE, cedlemo@gmx.com
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
open OUnit2
module TU = Test_utils

let printer = TU.printer
let queue_length = TU.queue_length

let test_stored_playlists_listplaylists _test_ctxt =
  TU.run_test_on_playlist_lwt begin fun client ->
    Mpd.Stored_playlists_lwt.listplaylists client
    >>= fun response ->
    let () = match response with
    | Error message ->
      assert_equal ~printer "This should not have been reached" message
    | Ok playlists ->
      let () = assert_equal ~printer:string_of_int 2 (List.length playlists) in
      let hd = List.hd playlists in
      let tail = List.hd (List.tl playlists) in
      let test = "bach" = hd || "bach1" = hd in
      let () = assert_bool "First playlist" test in
      let test' = "bach" = tail || "bach1" = tail in
      assert_bool "Last playlist" test'
    in Lwt.return_unit
  end

let tests =
  "Queue and playlists lwt tests" >:::
  [
    "test stored playlists listplaylists" >:: test_stored_playlists_listplaylists;
  ]
