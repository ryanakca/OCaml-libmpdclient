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

(* compile with
 * ocamlfind ocamlc -o try_mpd_queries -package str,unix -linkpkg -g mpd_responses.ml mpd.ml try_mpd_queries.ml
 * or
 * ocamlfind ocamlc -o try_mpd_queries -package str,unix,libmpdclient -linkpkg -g try_mpd_queries.ml
 * or
 * jbuilder build samples/try_mpd_queries.exe
 *)
let host = "127.0.0.1"
let port = 6600

let () =
   let connection = Mpd.Connection.initialize host port in
   print_endline ("received: " ^ (Mpd.Connection.read_command_response connection));
   Mpd.Connection.write connection (Sys.argv.(1) ^"\n");
   print_endline ("received: " ^ (Mpd.Connection.read_command_response connection));
   Mpd.Connection.close connection;
