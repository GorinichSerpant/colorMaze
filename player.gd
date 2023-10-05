extends TileMap

onready var grid = get_parent()
onready var frame = grid.get_parent()


var x = 9
var y = 0

export var color = ""
export var playerNumber = ""

var tile = 7

signal hit

signal win


func _ready():
	tileSelecter()
	set_cell(x,y,tile,false,false,false,Vector2(0,0))

func get_input():
	set_cell(x,y,-1,false,false,false,Vector2(0,0))
	if Input.is_action_just_pressed('player'+ playerNumber + 'Right'):
		if checkLocation(x+1,y):
			x += 1
		else:
			impact()
			x = 1
			y = 8
	if Input.is_action_just_pressed('player'+ playerNumber + 'Left'):
		if checkLocation(x-1,y):
			x -= 1
		else:
			impact()
			x = 1
			y = 8
	if Input.is_action_just_pressed('player'+ playerNumber + 'Down'):
		if checkLocation(x,y+1):
			y += 1
		else:
			impact()
			x = 1
			y = 8
	if Input.is_action_just_pressed('player'+ playerNumber + 'Up'):
		if checkLocation(x,y-1):
			y -= 1
		else:
			impact()
			x = 1
			y = 8
	set_cell(x,y,tile,false,false,false,Vector2(0,0))


func _process(_delta):
	if grid.gameOn:
		get_input()

#checks passiblity and win condition
func checkLocation(newX, newY):
	var ID = grid.get_cell(newX, newY)
	
	if ID == 3 || ID == 6:
		return true
	if ID == 2 && color == "black":
		return true
	if ID == 4 && color == "white":
		return true
	if ID == 5:
		grid.gameOn = false
		frame.hide()
		emit_signal("win")
		return true
	
	return false

func tileSelecter():
	if color == "black":
		tile = 8
	if color == "white":
		tile = 7

func impact():
	emit_signal("hit")
