class_name playerIdleState

extends PlayerState

func enter()->void:
	player.anim.play(idle_anim)
func process_input(event: InputEvent)-> State:
	super(event)
	if event.is_action_pressed(movement_key): return walk_state
	return null
