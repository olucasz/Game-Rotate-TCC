extends Area2D

var velocidade_queda = 200  # Velocidade com que a fruta cai

func _ready():
	add_to_group("frutas")

func _process(delta):
	position.y += velocidade_queda * delta  # Faz a fruta descer
	if position.y > 1090:
		$remover_numero/AnimationPlayer.play("coleta_-")
		await get_tree().create_timer(0.3).timeout 
		queue_free() 
		adiciona_perca() 
		
func adiciona_perca():
	Global.perdidas += 1
