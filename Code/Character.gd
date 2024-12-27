extends CharacterBody2D

var health
var speed = 200.0

var level
var attackSpeed

func _dir(mesh)->void:
	var absMouse = abs(get_local_mouse_position())
	var posMouse = get_local_mouse_position()
	
	if absMouse.x > absMouse.y:
		if posMouse.x >= 0:
			mesh.position = Vector2(15,0)
		else:
			mesh.position = Vector2(-15,0)
	else:
		if posMouse.y >= 0:
			mesh.position = Vector2(0,15)
		else:
			mesh.position = Vector2(0,-15)
