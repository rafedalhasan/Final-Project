extends Control

func _ready():
	# Ensure that the Label node exists and update its text
	if $VBoxContainer.has_node("Label"):
		# Use the updated Global function to get the current story player
		$VBoxContainer/Label.text = Global.get_current_player() + ", please submit your story."
	else:
		print("Error: Label node not found!")

func _on_SubmitButton_pressed():
	# Ensure that the TextEdit node exists
	if $VBoxContainer.has_node("TextEdit"):
		var story_input = $VBoxContainer/TextEdit
		var story = story_input.text.strip_edges()
		
		# Check if the story is empty
		if story == "":
			print("Story cannot be empty.")
			return

		# Update the current story and correct player in Global
		Global.current_story = story
		Global.correct_player = Global.get_current_player()

		# Move to the next story player for future rounds
		Global.next_player()

		# Transition to the Story Display scene
		get_tree().change_scene_to_file("res://StoryDisplay.tscn")
	else:
		print("Error: TextEdit node not found!")
