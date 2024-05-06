extends Node2D

export (NodePath) onready var button = get_node(button) # var to assign button to for later acces.


# Called when the node enters the scene tree for the first time.
func _ready():
	# this is for the click mask.
	var bitmap = BitMap.new()
	var image = Image.new()
	image.load("res://icon.png")
	bitmap.create_from_image_alpha(image)
	button.texture_click_mask = bitmap


func _on_TextureButton_pressed():
	#do what you need to do to move the slides. something like:
	$Slidesnode.position.x -= 100 # this moves the slidesnode 100px to the left
