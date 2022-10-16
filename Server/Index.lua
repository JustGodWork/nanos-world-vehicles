-- Here follows a list with all Vehicles we currently have, already configured and ready to spawn, feel free to spawn your own or create your own vehicles
NanosWorldVehicles = {
	Offroad = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Offroad", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_15", "nanos-world::A_Vehicle_Horn_Toyota", "nanos-world::A_Vehicle_Skid", "nanos-world::A_Car_Engine_Start", "nanos-world::A_Vehicle_Door", true, "nanos-world::ABP_Offroad")

		vehicle:AddStaticMeshAttached("body", "nanos-world::SM_Offroad_Body")
		vehicle:AddStaticMeshAttached("wheel_BR", "nanos-world::SM_Offroad_Tire", "VisWheel_BR", Vector(), Rotator(0, 180, 0))
		vehicle:AddStaticMeshAttached("wheel_FR", "nanos-world::SM_Offroad_Tire", "VisWheel_FR", Vector(), Rotator(0, 180, 0))
		vehicle:AddStaticMeshAttached("wheel_FL", "nanos-world::SM_Offroad_Tire", "VisWheel_FL")
		vehicle:AddStaticMeshAttached("wheel_BL", "nanos-world::SM_Offroad_Tire", "VisWheel_BL")

		vehicle:SetEngineSetup(600, 5000)
		vehicle:SetAerodynamicsSetup(1500, 0.1, 180, 160, 0.1)
		vehicle:SetSteeringWheelSetup(Vector(0, 30, 130), 15)

		vehicle:SetWheel(0, "PhysWheel_FL", 50, 20, 50, Vector(), true, true, false, false, false, 3000, 6000, 750, 1, 4, 20, 20, 100, 100, 20, 20, 0, 0.5, 1)
		vehicle:SetWheel(1, "PhysWheel_FR", 50, 20, 50, Vector(), true, true, false, false, false, 3000, 6000, 750, 1, 4, 20, 20, 100, 100, 20, 20, 0, 0.5, 1)
		vehicle:SetWheel(2, "PhysWheel_BL", 50, 20,  0, Vector(), true, true, true,  false, false, 3000, 6000, 750, 1, 4, 20, 20, 100, 100, 20, 20, 0, 0.5, 1)
		vehicle:SetWheel(3, "PhysWheel_BR", 50, 20,  0, Vector(), true, true, true,  false, false, 3000, 6000, 750, 1, 4, 20, 20, 100, 100, 20, 20, 0, 0.5, 1)

		vehicle:SetDoor(0, Vector(0, -80, 100), Vector(12, -30, 90), Rotator(0, 0,   0), 75, -150)
		vehicle:SetDoor(1, Vector(0,  80, 100), Vector(40,  32, 90), Rotator(0, 0, -15), 75,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	CamperVan = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_CamperVan", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(550, 5200)
		vehicle:SetAerodynamicsSetup(2700, 0.6, 600, 220, 0.3, Vector(80, 0, 150))
		vehicle:SetSteeringWheelSetup(Vector(0, 32, 125), 17)
		vehicle:SetHeadlightsSetup(Vector(400, 0, 70))
		vehicle:SetTaillightsSetup(Vector(-350, 0, 70))

		vehicle:SetWheel(0, "Wheel_Front_Left", 39, 24, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(1, "Wheel_Front_Right", 39, 24, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 39, 41, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 39, 41, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 2, 10, 0, 0.5, 0.7)

		vehicle:SetDoor(0, Vector(180, -120, 140), Vector( 145, -58, 150), Rotator(0, 0, 15), 75, -150)
		vehicle:SetDoor(1, Vector(180,  120, 140), Vector( 160,  55, 145), Rotator(0, 0,  5), 60,  150)
		vehicle:SetDoor(2, Vector(50,   120, 140), Vector(-125,   0, 140), Rotator(0, 0,  5), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Van = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Van", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(540, 4400)
		vehicle:SetAerodynamicsSetup(3200, 0.6, 550, 230, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(4, 44, 115), 20)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 106))
		vehicle:SetTaillightsSetup(Vector(-273, 0, 63))

		vehicle:SetWheel(0, "Wheel_Front_Left", 44, 24, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 250, 50, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(1, "Wheel_Front_Right", 44, 24, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 250, 50, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 44, 41, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 250, 50, 2, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 44, 41, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 250, 50, 2, 10, 0, 0.5, 0.7)

		vehicle:SetDoor(0, Vector(70, -120, 140), Vector( 55, -73, 160), Rotator(0, 0, 15), 75, -150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Wagon = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Wagon", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_14")

		vehicle:SetEngineSetup(650, 4600)
		vehicle:SetAerodynamicsSetup(1900, 0.3, 505, 190, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(-2, 26, 120), 17)
		vehicle:SetHeadlightsSetup(Vector(250, 0, 75))
		vehicle:SetTaillightsSetup(Vector(-250, 0, 95))

		vehicle:SetWheel(0, "Wheel_Front_Left", 36, 19, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(1, "Wheel_Front_Right", 36, 19, 45, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 36, 19, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 36, 19, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)

		vehicle:SetDoor(0, Vector( 22, -80, 100), Vector(-20, -37, 90), Rotator(0, 0, 10), 75, -150)
		vehicle:SetDoor(1, Vector( 22,  80, 100), Vector(-10,  39, 90), Rotator(0, 0,  0), 60,  150)
		vehicle:SetDoor(2, Vector(-80, -80, 100), Vector(-95, -40, 97), Rotator(0, 0,  0), 60, -150)
		vehicle:SetDoor(3, Vector(-80,  80, 100), Vector(-95,  40, 97), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Sedan = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Sedan", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_01")

		vehicle:SetEngineSetup(900, 5500, 1200, 0.05, 5, 600)
		vehicle:SetAerodynamicsSetup(1400, 0.3, 480, 190, 0.4)
		vehicle:SetSteeringWheelSetup(Vector(-2, 28, 125), 17)
		vehicle:SetHeadlightsSetup(Vector(300, 0, 64))
		vehicle:SetTaillightsSetup(Vector(-300, 0, 80))

		vehicle:SetWheel(0, "Wheel_Front_Left",  30, 20, 45, Vector(), false, true, false, false, false, 1900, 3000, 1000, 1, 2.3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(1, "Wheel_Front_Right", 30, 20, 45, Vector(), false, true, false, false, false, 1900, 3000, 1000, 1, 2.3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   30, 20,  0, Vector(), true, true,  true, false, false, 1900, 3000, 1000, 1, 3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  30, 20,  0, Vector(), true, true,  true, false, false, 1900, 3000, 1000, 1, 3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)

		vehicle:SetDoor(0, Vector(31, -110, 90), Vector(10, -47, 80), Rotator(0, 0, 0), 60, -150)
		vehicle:SetDoor(1, Vector(31,  110, 90), Vector(5, 40, 85), Rotator(0, 0, 0), 60,  150)
		vehicle:SetDoor(2, Vector(-80, -110, 90), Vector(-105, -40, 95), Rotator(0, 0, 0), 60, -150)
		vehicle:SetDoor(3, Vector(-80,  110, 90), Vector(-105,  40, 95), Rotator(0, 0, 0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	SUV = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_SUV", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_14")

		vehicle:SetEngineSetup(800, 4500)
		vehicle:SetAerodynamicsSetup(2000, 0.3, 500, 210, 0.5)
		vehicle:SetSteeringWheelSetup(Vector(0, 20, 135), 20)

		vehicle:SetWheel(0, "Wheel_Front_Left", 34, 20, 50, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(1, "Wheel_Front_Right", 34, 20, 50, Vector(), false, true, false, false, false, 1500, 3000, 1200, 1, 2, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 34, 20, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 34, 20, 0, Vector(), true, true, true, false, false, 1500, 3000, 1200, 1, 5, 20, 20, 150, 30, 6, 10, 0, 0.5, 0.7)

		vehicle:SetDoor(0, Vector( 22, -80, 120), Vector(-18, -47, 110), Rotator(0, 0, 15), 75, -150)
		vehicle:SetDoor(1, Vector( 22,  80, 120), Vector( 5,   47, 105), Rotator(0, 0,  0), 60,  150)
		vehicle:SetDoor(2, Vector(-80, -80, 120), Vector(-60, -39,  90), Rotator(0, 0,  0), 60, -150)
		vehicle:SetDoor(3, Vector(-80,  80, 120), Vector(-60,  39,  90), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Hatchback = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Hatchback", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_01")

		vehicle:SetEngineSetup(1200, 6500, 1200, 0.03, 6, 600)
		vehicle:SetAerodynamicsSetup(1200, 0.3, 500, 200, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 133), 18)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 70))

		vehicle:SetWheel(0, "Wheel_Front_Left",  26, 17, 42, Vector(), false, true, false, false, false, 2200, 3000, 1500, 1, 2.9, 20, 20, 100, 25, 4, 4, 0, 0.5, 0.6)
		vehicle:SetWheel(1, "Wheel_Front_Right", 26, 17, 42, Vector(), false, true, false, false, false, 2200, 3000, 1500, 1, 2.9, 20, 20, 100, 25, 4, 4, 0, 0.5, 0.6)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   26, 17,  0, Vector(), true, true,  true, false, false, 2200, 3000, 1500, 1, 4, 20, 20, 100, 25, 4, 4, 0, 0.5, 0.6)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  26, 17,  0, Vector(), true, true,  true, false, false, 2200, 3000, 1500, 1, 4, 20, 20, 100, 25, 4, 4, 0, 0.5, 0.6)

		vehicle:SetDoor(0, Vector(25, -80, 100), Vector( 0, -47, 80), Rotator(0, 0, 10), 60, -150)
		vehicle:SetDoor(1, Vector(25,  80, 100), Vector(12,  47, 80), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Pickup = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Pickup", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_10")
		vehicle:SetEngineSetup(550, 5000)
		vehicle:SetAerodynamicsSetup(2000, 0.4, 500, 200, 0.4)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 122), 18)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 65))

		vehicle:SetWheel(0, "Wheel_Front_Left",  30, 18, 45, Vector(), true, true, false, false, false, 5000, 3000, 1500, 1, 2, 20, 20, 350, 60, 6, 10, 0, 0.4, 0.6)
		vehicle:SetWheel(1, "Wheel_Front_Right", 30, 18, 45, Vector(), true, true, false, false, false, 5000, 3000, 1500, 1, 2, 20, 20, 350, 60, 6, 10, 0, 0.4, 0.6)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   30, 18,  0, Vector(), true, true,  true, false, false, 5000, 3000, 1500, 1, 2, 20, 20, 350, 60, 6, 10, 0, 0.4, 0.6)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  30, 18,  0, Vector(), true, true,  true, false, false, 5000, 3000, 1500, 1, 2, 20, 20, 350, 60, 6, 10, 0, 0.4, 0.6)

		vehicle:SetDoor(0, Vector(  50, -75, 105), Vector(   8, -32.5,  95), Rotator(0,  0,  10), 70, -150)
		vehicle:SetDoor(1, Vector(  50,  75, 105), Vector(  25,    50,  90), Rotator(0,  0,   0), 70,  150)
		vehicle:SetDoor(2, Vector( -90, -75, 130), Vector( -90,  -115, 155), Rotator(0,  90, 20), 60, -150)
		vehicle:SetDoor(3, Vector( -90,  75, 130), Vector( -90,   115, 155), Rotator(0, -90, 20), 60,  150)
		vehicle:SetDoor(4, Vector(-195, -75, 130), Vector(-195,  -115, 155), Rotator(0,  90, 20), 60, -150)
		vehicle:SetDoor(5, Vector(-195,  75, 130), Vector(-195,   115, 155), Rotator(0, -90, 20), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	SportsCar = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_SportsCar", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_05")

		vehicle:SetEngineSetup(1600, 7500, 2000, 0.05, 10, 600)
		vehicle:SetAerodynamicsSetup(1200, 0.2, 520, 240, 0.4)
		vehicle:SetTransmissionSetup(3.5, 6000, 3000, 0.1, 0.97)
		vehicle:SetSteeringWheelSetup(Vector(0, 38, 119), 12)

		vehicle:SetWheel(0, "Wheel_Front_Left", 31, 27, 50, Vector(), false, true, false, false, false, 4000, 4500, 1000, 1, 2.7, 20, 20, 70, 10, 6, 6, 0, 0.5, 0.4)
		vehicle:SetWheel(1, "Wheel_Front_Right", 31, 27, 50, Vector(), false, true, false, false, false, 4000, 4500, 1000, 1, 2.7, 20, 20, 70, 10, 6, 6, 0, 0.5, 0.4)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 35, 37, 0, Vector(), true, true, true, false, false, 4000, 4500, 1500, 1, 4, 20, 20, 70, 10, 6, 6, 0, 0.5, 0.4)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 35, 37, 0, Vector(), true, true, true, false, false, 4000, 4500, 1500, 1, 4, 20, 20, 70, 10, 6, 6, 0, 0.5, 0.4)

		vehicle:SetDoor(0, Vector(25, -95, 100), Vector(35, -42, 55), Rotator(0, 0, -10), 75, -150)
		vehicle:SetDoor(1, Vector(25,  95, 100), Vector(35,  42, 60), Rotator(0, 0, -15), 75,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckBox = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Truck_Box", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(600, 5700)
		vehicle:SetAerodynamicsSetup(3500, 0.6, 740, 240, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 20)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))


		vehicle:SetWheel(0, "Wheel_Front_Left",    43, 20, 40, Vector(), false, true, false, true, false, 3500, 4500, 1000, 1, 1, 20, 20, 400, 100, 10, 10, 0, 0.5, 0.3)
		vehicle:SetWheel(1, "Wheel_Front_Right",   43, 20, 40, Vector(), false, true, false, true, false, 3500, 4500, 1000, 1, 1, 20, 20, 400, 100, 10, 10, 0, 0.5, 0.3)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 43, 40, 0, Vector(), true, true, true, true, false, 3500, 4500, 2000, 1, 2, 20, 20, 800, 120, 10, 5, 0, 0.5, 0.3)
		vehicle:SetWheel(3, "Wheel_Rear_Right",43, 40, 0, Vector(), true, true, true, true, false, 3500, 4500, 2000, 1, 2, 20, 20, 800, 120, 10, 5, 0, 0.5, 0.3)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckChassis = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "nanos-world::SK_Truck_Chassis", CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(600, 5700)
		vehicle:SetAerodynamicsSetup(2000, 0.4, 650, 220, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 20)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))

		vehicle:SetWheel(0, "Wheel_Front_Left",    43, 20, 40, Vector(), false, true, false, true, false, 3500, 4500, 1000, 1, 1, 20, 20, 400, 100, 10, 10, 0, 0.5, 0.3)
		vehicle:SetWheel(1, "Wheel_Front_Right",   43, 20, 40, Vector(), false, true, false, true, false, 3500, 4500, 1000, 1, 1, 20, 20, 400, 100, 10, 10, 0, 0.5, 0.3)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 43, 40, 0, Vector(), true, true, true, true, false, 3500, 4500, 2000, 1, 2, 20, 20, 800, 120, 10, 5, 0, 0.5, 0.3)
		vehicle:SetWheel(3, "Wheel_Rear_Right",43, 40, 0, Vector(), true, true, true, true, false, 3500, 4500, 2000, 1, 2, 20, 20, 800, 120, 10, 5, 0, 0.5, 0.3)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
}