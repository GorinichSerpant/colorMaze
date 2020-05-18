extends Sprite

func _ready():
	pass 



func _on_player1_hit():
	$"../Thumper".play("blackShake")
