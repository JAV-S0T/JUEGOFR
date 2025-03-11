extends CharacterBody2D

var attacking = false  # Controlar si el enemigo está atacando o no

func _ready():
	$Enemigo1.play("idle")
	pass

func _on_enemigo_1_animation_looped():
	if not attacking:
		$Enemigo1.play("idle")  # Regresa al estado idle si no está atacando
		$Timer.start()  # Reinicia el temporizador para el próximo turno
		$Timer2.start()  # Reinicia el temporizador para el siguiente ataque
	pass

func _on_timer_timeout():
	if not attacking:  # Asegurarse de que solo ataque si no está en ataque
		attacking = true
		$Enemigo1.play("attack")
		pass

func _on_timer_2_timeout():
	if attacking:  # Solo aplica daño si está en estado de ataque
		get_parent().get_node("Player/Player").play("hit")
		attacking = false  # Resetea el estado después del ataque
	pass
