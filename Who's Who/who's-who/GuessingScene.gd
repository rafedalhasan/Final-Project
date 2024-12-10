extends Control

func _ready():
	# Display the submitted story
	$VBoxContainer/StoryLabel.text = "Story: " + Global.current_story

	# Display the current player's turn
	$VBoxContainer/PlayerTurnLabel.text = Global.get_current_player() + ", guess who owns this story."

	# Populate the OptionButton with player names (excluding the current player)
	var option_button = $VBoxContainer/GuessOptionButton
	option_button.clear()
	for player in Global.players:
		if player != Global.get_current_player():  # Exclude the current guesser
			option_button.add_item(player)

func _on_SubmitGuessButton_pressed():
	# Get the selected option
	var option_button = $VBoxContainer/GuessOptionButton
	var selected_index = option_button.get_selected_id()
	if selected_index == -1:
		print("No player selected.")
		return

	var selected_player = option_button.get_item_text(selected_index)

	# Check if the guess is correct
	if selected_player == Global.correct_player:
		Global.scores[Global.get_current_player()] += 1
		print(Global.get_current_player() + " guessed correctly!")
	else:
		print(Global.get_current_player() + " guessed wrong.")

	# Record the guess
	var guess_data = {
		"guesser": Global.get_current_player(),
		"guess": selected_player
	}
	Global.guesses.append(guess_data)

	# Transition logic: Check if all players except the story submitter have guessed
	if len(Global.guesses) == len(Global.players) - 1:
		print("All guesses completed. Moving to the scoreboard.")
		get_tree().change_scene_to_file("res://Scoreboard.tscn")
	else:
		# Move to the next player and reload the scene
		Global.next_player()
		get_tree().reload_current_scene()
