class_name playerIdleState

extends PlayerState

func enter()->void:
	print("idle")
	player.anim.play(idle_anim)
func process_input(event: InputEvent)-> State:
	super(event)
	#print(event.is_action_pressed(movement_key))
	print(walk_state)
	if event.is_action_pressed(movement_key): return walk_state
	return null
