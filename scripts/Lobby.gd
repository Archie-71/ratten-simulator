extends Control


func _on_Host_pressed():
	var net = NetworkedMultiplayerENet.new()
	net.create_server(4242, 10)
	get_tree().network_peer = net
	get_tree().root.add_child(preload("res://scenes/Main.tscn").instance())
	queue_free()


func _on_Join_pressed():
	var net = NetworkedMultiplayerENet.new()
	net.create_client("127.0.0.1", 4242)
	get_tree().network_peer = net
	get_tree().root.add_child(preload("res://scenes/Main.tscn").instance())
	queue_free()
