extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dot = load("res://dot.tscn").instantiate()
	print("POS ", dot.transform)
	dot.transform.origin = Vector2(300, 100)
	add_child(dot)
	
	print("HERE ", dot)
	
