extends Node2D

var dot_count = 0
var mouse_pressed = false
var mouse_position = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		mouse_pressed = event.pressed
	elif event is InputEventMouseMotion:
		mouse_position = event.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if mouse_pressed:
		var dot = load("res://dot.tscn").instantiate()
		dot.transform.origin = mouse_position
		add_child(dot)
		dot_count += 1
		print("COUNT ", dot_count)

