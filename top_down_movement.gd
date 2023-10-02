class_name TopDownMovement
extends Node

# Get the actor (the only dependency for this compoenent)
@export var actor: CharacterBody2D

# Export a min slide angle
@export var min_slide_angle = 0.0

func _ready() -> void:
	# Set the min slide angle on the actor
	actor.wall_min_slide_angle = min_slide_angle
	
	# Set the motion mode to floating becasue this componenet is for top-down movement
	# and we don't want a grounded motion mode affecting the movement
	actor.motion_mode = actor.MOTION_MODE_FLOATING

func _physics_process(delta: float) -> void:
	# Move the actor with move and slide
	actor.move_and_slide()
	
	# For more control over collisions (if you wanted bouncing) use
	# move_and_collide to get collision data
