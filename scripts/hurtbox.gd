class_name HurtBox
extends Area2D

func _ready():
	collision_layer = 0
	collision_mask = 2
	print(collision_layer, collision_mask)
	self.area_entered.connect(on_area_entered)
func on_area_entered(hit_box: Area2D)-> void:
	print("enter")
	print(hit_box)
	if hit_box is Hitbox:
		var hit = hit_box as Hitbox
		print("hit by ", hit)
