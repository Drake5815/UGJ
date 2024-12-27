extends "res://Code/Character.gd"

@onready var indictaor = $indicator
@onready var bullet = preload("res://TSCN/objects/bullet.tscn")


func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("left","right","upward","downward")
	velocity = direction * speed
	#print("direction: ", direction, "Velocity: ", velocity)
	move_and_slide()

func _process(delta: float) -> void:
	_dir(indictaor)
	if Input.is_action_just_pressed("Attack"):
		_attack()

func _attack()->void:
	var initBullet = bullet.instantiate()
	initBullet.position = Vector2(0,0)
	
	var posMouse = get_global_mouse_position()
	var dir = (posMouse - global_position).normalized()
	
	initBullet.rotation = dir.angle()
	initBullet.global_position += dir * 400 * get_process_delta_time()
	self.add_child(initBullet)
