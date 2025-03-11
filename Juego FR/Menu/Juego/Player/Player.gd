extends CharacterBody2D

var attacking = false # Variable para controlar el estado de ataque

func _ready():
	$Player.play("idle")

func _process(delta):
	# Aquí podrías agregar la lógica de turno o alguna otra condición
	pass

func _on_atacar_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass

func _on_atacar_pressed():
	if not attacking:  # Solo puede atacar si no está en ataque
		attacking = true
		$"/root/Global/BotonClick".play()
		$Player.play("attack")
		$Timer.start()  # Inicia el temporizador para controlar el daño
	pass

func _on_player_animation_looped():
	$Player.play("idle")
	attacking = false  # Resetea el estado después de terminar el ataque
	pass

func _on_timer_timeout():
	$AudioStreamPlayer2D.play()
	# Aquí se aplica el daño al enemigo
	get_parent().get_node("Enemigo1/Enemigo1").play("hit")
	pass
