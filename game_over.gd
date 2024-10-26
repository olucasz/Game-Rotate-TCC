extends Node2D
var total = Label
@onready var som  = $som
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("final")
	total = $total_frutas
	atualiza_label()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func atualiza_label():
	var quantidade = Global.total
	
	total.text = str(quantidade)

func _on_x_pressed() -> void:
	som.play()
	$AnimationPlayer.play("but")
	get_tree().change_scene_to_file("res://start_game.tscn")


func _on_seta_pressed() -> void:
	som.play()
	$AnimationPlayer.play("but")
	get_tree().change_scene_to_file("res://main.tscn")


func _on_replay_pressed() -> void:
	som.play()
	$AnimationPlayer.play("but")
	get_tree().change_scene_to_file("res://main.tscn")
