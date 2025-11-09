class_name StateMachine
extends Node
var curr_state: State
 
@export var start_state:State
func init()->void:change_state(start_state)
func process_frame(delta:float)->void:
	var new_state: State = curr_state.process_frame(delta)
	if new_state:change_state(new_state)
func process_input(event: InputEvent) -> void:
	var new_state: State = curr_state.process_input(event)
	if new_state:change_state(new_state)
func process_physics(delta:float)->void:
	var new_state:State = curr_state.process_physics(delta)
	if new_state:change_state(new_state)
	
func change_state(new_state: State) ->void:
	if curr_state:
		curr_state.exit()
	curr_state = new_state
	curr_state.enter()
