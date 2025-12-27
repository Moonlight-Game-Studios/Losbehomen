@tool
extends BTCondition

@export var distancia_segura = 1000

func _tick(_delta: float) -> Status:
	
	var distancia = agent.global_position.distance_to(agent.player.global_position)
	
	if distancia < distancia_segura :
		return SUCCESS
	
	return FAILURE
