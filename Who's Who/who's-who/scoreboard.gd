extends Control

func _ready():
	# Fetch and display the scores
	var scores_container = $VBoxContainer/ScrollContainer/ScoresContainer

	# Clear any existing entries
	for child in scores_container.get_children():
		scores_container.remove_child(child)
		child.queue_free()

	# Add updated scores to the container
	for player in Global.players:
		var label = Label.new()
		label.text = player + ": " + str(Global.scores[player]) + " points"
		scores_container.add_child(label)

func _on_PlayAgainButton_pressed():
	# Reset guesses and prepare for the next round
	Global.current_story = ""
	Global.correct_player = ""
	Global.guesses.clear()
	Global.next_player()
	get_tree().change_scene_to_file("res://StorySubmission.tscn")

func _on_MainMenuButton_pressed():
	# Return to the main menu
	get_tree().change_scene_to_file("res://Main.tscn")
