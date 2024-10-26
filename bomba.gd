extends Area2D

var velocidade_queda = 200  # Velocidade com que a fruta cai

func _ready():
	add_to_group("inimigos")

func _process(delta):
	position.y += velocidade_queda * delta  # Faz a fruta descer
	if position.y > 1080:  # Limite para quando a fruta sai da tela (ajustar conforme sua resolução)
		queue_free() 
		#adiciona_perca() 
		
#func adiciona_perca():
	#Global.perdidas += 1
		
		
	
