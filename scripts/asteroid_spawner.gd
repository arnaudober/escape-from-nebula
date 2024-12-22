# asteroid_spawner.gd
extends Node

@export var asteroid_scene : PackedScene  # Your asteroid scene (assigned in the editor)
@export var spawn_area_size : Vector2 = Vector2(1280, 720)  # Example screen area size
@export var spawn_interval : float = 1.0  # How often asteroids spawn
@export var player_node : Node2D

var minimum_distance_to_player : float = 100.0  # Minimum distance from the player to spawn an asteroid

func _ready():
	# Set up a timer to spawn asteroids at intervals
	var timer = Timer.new()
	timer.wait_time = spawn_interval
	timer.one_shot = false
	add_child(timer)
	
	# Connect the timeout signal to the _spawn_asteroid method
	timer.connect("timeout", Callable(self, "_spawn_asteroid"))
	
	timer.start()

func _spawn_asteroid():
	var asteroid = asteroid_scene.instantiate()  # Spawn the asteroid instance
	add_child(asteroid)
	
	# Find a random position and make sure it's not too close to the player
	var spawn_position : Vector2
	var too_close : bool = true
	
	while too_close:
		spawn_position = Vector2(randf_range(0, spawn_area_size.x), randf_range(0, spawn_area_size.y))
		
		# Check the distance from the player
		if spawn_position.distance_to(player_node.position) > minimum_distance_to_player:
			too_close = false  # Exit the loop if the spawn position is far enough from the player

	asteroid.position = spawn_position

	# Randomize speed (use a range for the speed)
	var speed = randf_range(-100, 100)  # Random speed between 50 and 200
	var angle = randf_range(0, 2 * PI)  # Random angle for direction (0 to 360 degrees)

	# Set random velocity (normalize it and multiply by speed)
	asteroid.velocity = Vector2(cos(angle), sin(angle)) * speed

	# Randomize size (scale the asteroid)
	var size_scale = randf_range(0.3, 0.75)
	asteroid.scale = Vector2(size_scale, size_scale)
	
	asteroid.visible = true
