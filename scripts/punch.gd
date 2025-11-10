class_name playerPunchState

extends PlayerState
var has_attacked: bool
func enter()->void:
	has_attacked = false
	print("attack")
	player.anim.play(punch_anim)
	player.anim.animation_finished.connect(func(_anim): has_attacked = true)

func process_input(event: InputEvent)-> State:
	super(event)
	return null
		
func process_frame(delta: float) -> State:
	super(delta)
	if has_attacked: return idle_state
	return null
