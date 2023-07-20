extends CharacterBody2D

var vector: Vector2
var facing: Vector2 = Vector2.DOWN

const cardinal_directions: Array[Vector2] = [Vector2.LEFT, Vector2.RIGHT, Vector2.UP, Vector2.DOWN]
const texture_dir_map = {Vector2.LEFT: 2, Vector2.RIGHT: 0, Vector2.UP: 1, Vector2.DOWN: 3}

var character_name: String

func set_player_name():
	var choices: Array[String] = ["Gary", "Adam", "Eric", "James"]
	var rng = RandomNumberGenerator.new()
	var index = rng.randi_range(0, 3)
	character_name = choices[index]
	
func _ready():
	set_player_name()

func _physics_process(delta):
	var direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Set facing value
	for cardinal_direction in cardinal_directions:
		if direction.distance_to(cardinal_direction) < direction.distance_to(facing):
			facing = cardinal_direction
	
	# Update Sprite
	$sprite.frame = texture_dir_map[facing]
	
	# Finally, move
	velocity = direction * 200
	move_and_slide()
