
class_name HitBox
extends Area2D

func _ready():
	print("active")
	collision_layer = 2
	collision_mask = 0
	print(collision_layer, collision_mask)
