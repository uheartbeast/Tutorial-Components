class_name TopDownMovementVelocityInput
extends Node

# Dependencies for this component (actor, movement stats)

# Get access to the actor this node will be manipulating
@export var actor: CharacterBody2D

# Get access to the movement stats that will be used to move the actor
@export var top_down_movement_stats: TopDownMovementStats

func _physics_process(delta: float) -> void:
	# Grab input
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input.length() > 0:
		# If there is input, accelerate the actor toward the top speed
		actor.velocity = actor.velocity.move_toward(input * top_down_movement_stats.max_speed, top_down_movement_stats.acceleration * delta)
	else:
		# Otherwise apply friction
		actor.velocity = actor.velocity.move_toward(Vector2.ZERO, top_down_movement_stats.friction * delta)
