@tool
extends BTAction

@export var raio = 300

func _tick(_delta: float) -> Status:
	var dir_aleatoria = Vector2.RIGHT.rotated(randf_range(0,TAU))
	var alvo = agent.global_position + (dir_aleatoria * raio)
	agent._movimento_alvo(alvo)
	
	return SUCCESS
