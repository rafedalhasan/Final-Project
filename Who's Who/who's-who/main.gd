extends Control

func _on_StartButton_pressed():
	Global.reset_game()
	get_tree().change_scene_to_file("res://StorySubmission.tscn")
