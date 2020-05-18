extends Sprite


onready var AnimPlayer = get_parent()

func _ready():
	AnimPlayer.play("Tutorial")



func _on_Frame_hide():
	AnimPlayer.stop(true)
	hide()


func _on_Counter_animation_finished(anim_name):
	set_visible(true)
