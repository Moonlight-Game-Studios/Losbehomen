extends CharacterBody2D

@export var distancia_de_parada = 10.0
@export var velocidade = 150.0 

var player = Node2D
var posicao_alvo: Vector2

func _ready() -> void:
	posicao_alvo = global_position
	
	player = get_tree().get_first_node_in_group("Player")
	if player == null:
		print("sem player dfinido")

func _physics_process(_delta: float) -> void:
	if global_position.distance_to(posicao_alvo) > distancia_de_parada:
		var direcao = (posicao_alvo - global_position).normalized()
		
		velocity = direcao * velocidade
		move_and_slide()
	
	else:
		velocity = Vector2.ZERO

func _movimento_alvo(alvo: Vector2):
	print("indo para o alvo:", alvo )
	posicao_alvo = alvo
