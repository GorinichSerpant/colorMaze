extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_player1_hit():
	if get_parent().playing:
		play(0.0)


func _on_player2_hit():
	if get_parent().playing:
		play(0.0)
