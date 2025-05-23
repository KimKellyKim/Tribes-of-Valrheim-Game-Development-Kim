extends Node3D

@onready var hex_field = $HexField
@onready var resource_meshes = $ResourceMeshes
@onready var road_placer = $RoadPlacer

var placing_road = false

func _ready():
	# Setup the hex field
	hex_field.setup(resource_meshes)

func _on_road_pressed():
	placing_road = true
	if road_placer:
		road_placer.begin_road_placement()
