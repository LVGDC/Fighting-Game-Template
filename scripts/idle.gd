class_name playerIdleState

extends PlayerState

func enter()->void:
	#print("idle")
	player.anim.play(idle_anim)
func exit(newState: State = null)->void:
	super(newState)
func process_input(event: InputEvent)-> State:
	super(event)
	#print(event.is_action_pressed(movement_key))
	#print(walk_state)
	if event.is_action_pressed(movement_key): return walk_state
	elif event.is_action_pressed(punch_key): return punch_state
	return null
