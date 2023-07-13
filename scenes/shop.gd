extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Panel/RichTextLabel.visible_characters = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $CanvasLayer/Panel/RichTextLabel.visible_characters < $CanvasLayer/Panel/RichTextLabel.text.length():
		$CanvasLayer/Panel/RichTextLabel.visible_characters += 1
