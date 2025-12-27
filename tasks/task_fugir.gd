@tool
extends BTAction

func _tick(_delta: float) -> Status:
	var direcao = (agent.global_position - agent.player.global_position).normalized()
	var ponto_de_fuga = agent.global_position + (direcao * 100)
	agent._movimento_alvo(ponto_de_fuga)
	print("fugindo")
	return RUNNING
