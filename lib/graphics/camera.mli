module Dim3 : sig
  type t

  val create :
    ?pos:Math.Vec3.t ->
    ?look:Math.Vec3.t ->
    ?up:Math.Vec3.t ->
    ?height_angle:float ->
    ?near_plane:float ->
    ?far_plane:float ->
    ?aspect_ratio:float ->
    unit ->
    t

  val view : t -> Math.Mat4.t
  val projection : t -> Math.Mat4.t
  val look : t -> Math.Vec3.t
  val up : t -> Math.Vec3.t
  val set_pos : t -> Math.Vec3.t -> unit
  val move_pos : t -> Math.Vec3.t -> unit
  val rotate : t -> float -> Math.Vec3.t -> unit
  val set_aspect_ratio : t -> float -> unit
  val set_near_plane : t -> float -> unit
  val set_far_plane : t -> float -> unit

  module C : Ecs.Component.S with type t = t
end
