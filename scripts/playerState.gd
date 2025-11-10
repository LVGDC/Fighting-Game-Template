class_name PlayerState
extends State

@onready var player: Player = get_tree().get_first_node_in_group("player")
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity",9.8)
#AnimationPlayer Names
var idle_anim: String = "idle"
var walk_anim: String = "walk"
var punch_anim:String = "punch"
#States
@export_group("States")
@export var idle_state: PlayerState
@export var walk_state: PlayerState
@export var punch_state: PlayerState

#sprite variables
var sprite_is_flipped: bool = false
#buttons
var movement_key:String ="Movement"
var left_key:String = "Left"
var right_key:String ="Right"
var punch_key:String = "Punch"

var left_actions: Array = InputMap.action_get_events(left_key).map(func(action:InputEvent)->String: 
	return action.as_text().get_slice(" (", 0))
var right_actions: Array = InputMap.action_get_events(right_key).map(func(action:InputEvent)->String:
	return action.as_text().get_slice(" (", 0))

func determine_pos(event_text:String)->void:
	if left_actions.find(event_text) != -1: sprite_is_flipped = true
	if right_actions.find(event_text) != -1: sprite_is_flipped = false
	player.sprite.flip_h = sprite_is_flipped
func process_physics(delta:float)->State:
	player.velocity.y +=gravity * delta
	player.move_and_slide()
	return null
func exit(newState: State =null)->void:
	super() 
	newState.sprite_is_flipped = sprite_is_flipped
 
