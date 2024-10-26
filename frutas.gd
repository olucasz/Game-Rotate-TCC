extends Area2D

var velocidade_queda = 200  # Velocidade com que a fruta cai

func _ready():
	add_to_group("frutas")

func _process(delta):
	position.y += velocidade_queda * delta  # Faz a fruta descer
	if position.y > 1080:
		await get_tree().create_timer(0.7).timeout  # Limite para quando a fruta sai da tela (ajustar conforme sua resolução)
		queue_free() 
		adiciona_perca() 
		
func adiciona_perca():
	Global.perdidas += 1
