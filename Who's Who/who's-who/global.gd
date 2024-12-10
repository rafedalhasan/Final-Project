extends Node

var players = ["Player 1", "Player 2", "Player 3", "Player 4"]
var scores = {"Player 1": 0, "Player 2": 0, "Player 3": 0, "Player 4": 0}
var current_player_index = 0
var current_story = ""
var correct_player = ""
var guesses = []

# Shuffle the players array
func shuffle_players():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	for i in range(players.size()):
		var swap_index = rng.randi_range(0, players.size() - 1)
		var temp = players[i]
		players[i] = players[swap_index]
		players[swap_index] = temp

# Get the current player
func get_current_player():
	return players[current_player_index]

# Advance to the next player
func next_player():
	current_player_index = (current_player_index + 1) % players.size()

# Reset the game state
func reset_game():
	shuffle_players()
	current_player_index = 0
	current_story = ""
	correct_player = ""
	guesses.clear()
	for player in players:
		scores[player] = 0
