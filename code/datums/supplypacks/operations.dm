/decl/hierarchy/supply_pack/operations
	name = "Operations"

/decl/hierarchy/supply_pack/operations/mule
	name = "Equipment - MULEbot"
	contains = list()
	cost = 20
	containertype = /obj/structure/largecrate/animal/mulebot
	containername = "mulebot crate"

/decl/hierarchy/supply_pack/operations/cargotrain
	name = "Equipment - Cargo Train Tug"
	contains = list(/obj/vehicle/train/cargo/engine)
	cost = 45
	containertype = /obj/structure/largecrate
	containername = "cargo train tug crate"

/decl/hierarchy/supply_pack/operations/cargotrailer
	name = "Equipment - Cargo Train Trolley"
	contains = list(/obj/vehicle/train/cargo/trolley)
	cost = 15
	containertype = /obj/structure/largecrate
	containername = "cargo train trolley crate"

/decl/hierarchy/supply_pack/operations/contraband
	num_contained = 5
	contains = list(/obj/item/seeds/bloodtomatoseed,
					/obj/item/weapon/storage/pill_bottle/zoom,
					/obj/item/weapon/storage/pill_bottle/happy,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/pwine)

	name = "UNLISTED - Contraband crate"
	cost = 30
	containername = "unlabeled crate"
	contraband = 1
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/operations/webbing
	name = "Gear - Webbing, vests, holsters."
	num_contained = 4
	contains = list(/obj/item/clothing/accessory/storage/holster,
					/obj/item/clothing/accessory/storage/black_vest,
					/obj/item/clothing/accessory/storage/brown_vest,
					/obj/item/clothing/accessory/storage/white_vest,
					/obj/item/clothing/accessory/storage/drop_pouches/black,
					/obj/item/clothing/accessory/storage/drop_pouches/brown,
					/obj/item/clothing/accessory/storage/drop_pouches/white,
					/obj/item/clothing/accessory/storage/webbing)
	cost = 15
	containername = "webbing crate"

/decl/hierarchy/supply_pack/operations/bureaucracy
	contains = list(/obj/item/weapon/clipboard,
					 /obj/item/weapon/clipboard,
					 /obj/item/weapon/pen/red,
					 /obj/item/weapon/pen/blue,
					 /obj/item/weapon/pen/green,
					 /obj/item/device/camera_film,
					 /obj/item/weapon/folder/blue,
					 /obj/item/weapon/folder/red,
					 /obj/item/weapon/folder/yellow,
					 /obj/item/weapon/hand_labeler,
					 /obj/item/weapon/tape_roll,
					 /obj/structure/filingcabinet/chestdrawer{anchored = 0},
					 /obj/item/weapon/paper_bin)
	name = "Office supplies"
	cost = 15
	containertype = /obj/structure/closet/crate/large
	containername = "office supplies crate"

