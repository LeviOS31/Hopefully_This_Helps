extends Area2D

@onready var arrow = $arrow
@onready var collisionPosition = $CollisionShape2D

#signal home_check(firstClick, home)
signal home_check()

var animalhouse: String = "Spider"
var firstClick = false
var home = self
var pos
var good: bool

func _ready():
	arrow.hide()

func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("ui_select"):
		pos = collisionPosition.global_position
		if good != true:
			home_check.emit()
