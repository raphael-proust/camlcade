module Make () = struct
  type t = int

  let current = ref 0

  let next () : t =
    incr current;
    !current

  let compare = compare
end

module Component = Make ()
module Entity = Make ()
module ComponentSet = Set.Make (Component)
module EntitySet = Set.Make (Entity)
