extends Node2D
@onready var som2  = $som

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
 

func _on_inicio_pressed() -> void:
	som2.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://main.tscn")
