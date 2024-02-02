open Core

let command = 
  Command.basic
  ~summary:"Parse JSON from wikidata dump"
  ~readme:(fun () -> "More detailed information")
  Command.Param.(
    map
    (anon ("json" %: string))
    ~f:(fun json () -> print_endline json))

let () = Command_unix.run ~version:"0.1" ~build_info: "RWO" command
