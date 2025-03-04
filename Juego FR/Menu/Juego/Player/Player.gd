extends CharacterBody2D

func _ready():
	$Player.play("idle")
func _process(delta):
	
	
	pass


func _on_atacar_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.



func _on_atacar_pressed():
	$"/root/Global/BotonClick".play()
	$AudioStreamPlayer2D.play()
	$Player.play("attack")
	$Timer.start()
	
	pass # Replace with function body.


func _on_player_animation_looped():
	$Player.play("idle")
	pass # Replace with function body.



func _on_timer_timeout():
	$AudioStreamPlayer2D.play()
	pass # Replace with function body.
