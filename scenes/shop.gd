extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Panel/RichTextLabel.text = (
		"This is {name}. This is you. {name} is unimportant, so unimportant in fact, that his name was pulled at random. Don't believe me? Close the game and start again. See!"
		. format({"name": $player.character_name})
	)
	$CanvasLayer/Panel/RichTextLabel.visible_characters = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (
		$CanvasLayer/Panel/RichTextLabel.visible_characters
		< $CanvasLayer/Panel/RichTextLabel.text.length()
	):
		$CanvasLayer/Panel/RichTextLabel.visible_characters += 1
