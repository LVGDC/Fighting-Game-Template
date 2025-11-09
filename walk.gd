class_name playerWalkState

extends PlayerState
const SPEED: float =2
func enter()->void:
	print("walking")
	player.anim.play("walk")

func process_physics(delta: float) -> State:
	super(delta)
	return null
	
