class_name playerIdleState

extends PlayerState

func enter()->void:
	player.anim.play(idle_anim)
