extends Node

var gameWon = false


func _process(_delta):
	if Input.is_action_just_pressed("reset") && gameWon:
		get_tree().change_scene("res://oldGame.tscn")
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()



func _on_player1_win():
	gameWon = true


func _on_player2_win():
	gameWon = true


func _on_Counter_animation_finished(anim_name):
	pass # Replace with function body.
