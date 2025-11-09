class_name PlayerState
extends State

@onready var player: Player = get_tree().get_first_node_in_group("player")
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity",9.8)
#AnimationPlayer Names
var idle_anim: String = "idle"
var walk_anim: String = "walk"
#States
@export_group("States")
@export var idle_state: PlayerState
@export var walk_state: PlayerState

#buttons
var movement_key:String ="Movement"
var left_key:String = "Left"
var right_key:String ="Right"
func process_physics(delta:float)->State:
	player.velocity.y +=gravity * delta
	player.move_and_slide()
	return null
