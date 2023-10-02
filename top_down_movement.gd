class_name TopDownMovement
extends Node

@export var actor: CharacterBody2D
@export var min_slide_angle = 0.0

func _ready() -> void:
	actor.wall_min_slide_angle = min_slide_angle
	actor.motion_mode = actor.MOTION_MODE_FLOATING

func _physics_process(delta: float) -> void:
	actor.move_and_slide()
