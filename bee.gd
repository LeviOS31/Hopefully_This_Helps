extends Area2D

@onready var arrow = $arrow
@onready var collisionPosition = $CollisionShape2D

signal click_check(firstClick, animal)

var firstClick = true
var animal = self
var pos

func _ready():
	arrow.hide()

func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("ui_select"):
		pos = collisionPosition.global_position
		click_check.emit(firstClick, animal, pos, event, shape_idx)
