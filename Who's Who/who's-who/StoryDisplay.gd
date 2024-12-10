extends Control

func _ready():
	# Display the submitted story
	$VBoxContainer/StoryLabel.text = "Story: " + Global.current_story

func _on_ContinueButton_pressed():
	# Move to the guessing scene
	get_tree().change_scene_to_file("res://GuessingScene.tscn")
