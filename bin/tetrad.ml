open Core
open Async
let print_result word = 
  printf "%s\n"
  word

let get_definition word =
  return (word)

let search_and_print words = 
  Deferred.all_unit
    (List.map words ~f:(fun word ->
     get_definition word >>| print_result))

let () = 
  Command.async
  ~summary:"Parse JSON from wikidata dump"
  (let%map_open.Command words = 
    anon (sequence ("word" %: string))
  in
  fun () -> search_and_print words)
  |> Command_unix.run

let () = never_returns (Scheduler.go ())
