extends CharacterBody2D

@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D
@export var velocidade = 150.0

func _physics_process(delta: float) -> void:
	if navigation_agent.is_navigation_finished():
		return
	
	var current_agent_position:Vector2 = global_position
	var next_path_position:Vector2 = navigation_agent.get_next_path_position()
	
	var new_velocity:Vector2 = next_path_position - current_agent_position
	new_velocity = new_velocity.normalized() * velocidade
	
