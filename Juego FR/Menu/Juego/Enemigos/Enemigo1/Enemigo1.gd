extends CharacterBody2D
func _ready():
	$Enemigo1.play("idle")
	pass
	
	


func _on_enemigo_1_animation_looped():
	$Enemigo1.play("idle")
	$Timer.start()
	pass # Replace with function body.


func _on_timer_timeout():
	$Enemigo1.play("attack")
	$Timer2.start()
	pass # Replace with function body.


func _on_timer_2_timeout():
	get_parent().get_node("Player/Player").play("hit")
	pass # Replace with function body.
