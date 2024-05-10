extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewport: Vector2i = get_viewport().get_visible_rect().size
	var buffer = 30
	if position.y > viewport.y - buffer:
		position.y = viewport.y - buffer
	elif position.y < buffer:
		position.y = buffer
	if position.x > viewport.x - buffer:
		position.x = viewport.x - buffer
	elif position.x < buffer:
		position.x = buffer
