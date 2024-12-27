extends Node

@onready var pre_char = preload("res://TSCN/Character/Player/sykkuno.tscn")
@onready var World = get_tree().root.get_child(1)

func _ready() -> void:
	var char = pre_char.instantiate()
	char.global_position = Vector2(640, 360)
	World.add_child(char)

func _process(delta: float) -> void:
	pass

func _enemySpawn(enemy)->void:
	pass
