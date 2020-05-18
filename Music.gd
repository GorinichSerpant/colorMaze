extends AudioStreamPlayer

export (AudioStream) var gameSong
export (AudioStream) var endSong




func _process(_delta):
	if Input.is_action_just_pressed("mute"):
		playing = bool(1 - int(playing))
	


func _on_player1_win():
	set_stream(endSong)
	play()


func _on_player2_win():
	set_stream(endSong)
	play()
