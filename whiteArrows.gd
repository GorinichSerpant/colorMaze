extends Sprite

func _ready():
	pass # Replace with function body.


func _on_player2_hit():
	$"../Thumper".play("whiteShake")
