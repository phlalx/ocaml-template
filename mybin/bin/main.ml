open Core

let process _ s () = 
   let ast = Mylib.Mymodule.parse s in
   Printf.printf !"%{Mylib.Mymodule}" ast

let () = 
  let spec =
    Command.Spec.(
    empty +> 
    flag "-v" (optional bool) ~doc:" Optional boolean." +> 
    anon ("expression" %: string))
  in
  Command.basic ~summary:"Bla bla." spec process |> Command.run