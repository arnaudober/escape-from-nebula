extends CharacterBody2D  # Or KinematicBody2D if using Godot 3.x

# Movement variables
var speed = 300  # Movement speed in pixels per second
var screen_bounds = Vector2(0, 0)  # Bounds to keep the player within the screen

func _ready():
	# Set bounds based on the viewport size
	screen_bounds = Vector2(0, 300)
	

func handle_input(delta):
	var velocity = Vector2.ZERO  # Start with zero movement

	# Input handling for vertical movement
	if Input.is_action_pressed("ui_up"):  # Move up
		velocity.y -= speed
	if Input.is_action_pressed("ui_down"):  # Move down
		velocity.y += speed

	# Apply movement based on delta time
	position += velocity * delta

	# Constrain the position to stay within vertical bounds
	position.y = clamp(position.y, -300, screen_bounds.y)


func _process(delta):
	handle_input(delta)
