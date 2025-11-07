class_name StateMachine
extends Node
var curr_state: State
 
@export var start_state:State

func process_frame(delta:float)->void:
	var new_state: State = curr_state.process_frame(delta)
	
