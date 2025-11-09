class_name playerWalkState

extends PlayerState
const SPEED: float =50
func enter()->void:
	print("walking")
	player.anim.play(walk_anim)

func process_physics(delta: float) -> State:
	super(delta)
	do_move(get_move_dir())
	return null
func get_move_dir()->float:
	return Input.get_axis(left_key,right_key)
func do_move(move_dir: float)->void:
	player.velocity.x = move_dir *SPEED
