extends Node2D

@onready var arrow = $arrow

var animalPosition
var animalHome = ["beehive", "cobweb"]
var animalName
var matches = {"bee": "beehive", "spider": "cobweb"}
var home
var houses

func _ready():
	houses = $Houses
	for i in houses.get_children():
		i.home_check.connect(CheckAnimalToHouse.bind(i))

func _on_click_check(firstClick, animal, pos, event, shape_idx):
	animalName = animal
	print(animalName.name)
	animalPosition = animal.global_position
	arrow.position = Vector2(animal.global_position.x, animal.global_position.y - 120)

func CheckAnimalToHouse(house):
	if animalName != null:
		if animalName.name == house.animalhouse:
			house.good = true
		else:
			print("wrong")

