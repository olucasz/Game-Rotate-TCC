extends Area2D

# Variáveis de controle
var velocidade = 300  # Velocidade de movimento da cesta
var limite_esquerdo = 168  # Limite esquerdo da tela
var limite_direito = 1763 # Limite direito da tela
var limiar = 0.35  # Ignorar pequenos ruídos na leitura

func _process(delta):
	var inclinacao = ler_inclinacao().x  # Lê apenas o valor do eixo X

	# Aplica um limiar para ignorar movimentos sutis
	if abs(inclinacao) < limiar:
		inclinacao = 0

	mover_cesta(inclinacao, delta)

func ler_inclinacao() -> Vector3:
	# Lê o valor do acelerômetro (retorna um Vector3: x, y, z)
	return Input.get_accelerometer()

func mover_cesta(inclinacao, delta):
	# Calcula o movimento baseado na inclinação e na velocidade
	var movimento = inclinacao * velocidade * delta

	# Atualiza a posição da cesta, garantindo que ela não saia dos limites
	position.x = clamp(position.x + movimento, limite_esquerdo, limite_direito)
	
