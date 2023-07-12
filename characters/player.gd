extends CharacterBody2D

var vector: Vector2
var facing: Vector2 = Vector2.DOWN

const cardinal_directions: Array[Vector2] = [Vector2.LEFT, Vector2.RIGHT, Vector2.UP, Vector2.DOWN]
const texture_dir_map = {Vector2.LEFT: 2, Vector2.RIGHT: 0, Vector2.UP: 1, Vector2.DOWN: 3}

func _physics_process(delta):
	var direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	
	# Set facing value
	for cardinal_direction in cardinal_directions:
		if direction.distance_to(cardinal_direction) < direction.distance_to(facing):
			facing = cardinal_direction
	
	# Update Sprite
	var frame = texture_dir_map[facing]
