enum PackageTypes {
	PlayerData = 0,
	FiredGun = 1,
	SpawnZombie = 2,
	DestroyZombie = 3,
	SyncZombie = 4,
	SpawnWeapon = 5,
	ChangeWeapon = 6,
}


packageHandlers = array_create(256);

packageHandlers[PackageTypes.PlayerData   ] = package_get_player_data;
packageHandlers[PackageTypes.FiredGun     ] = package_get_fired_gun;
packageHandlers[PackageTypes.SpawnZombie  ] = package_get_spawn_zombie;
packageHandlers[PackageTypes.DestroyZombie] = package_get_destroy_zombie;
packageHandlers[PackageTypes.SyncZombie   ] = package_get_sync_zombie;
packageHandlers[PackageTypes.SpawnWeapon  ] = package_get_spawn_weapon;
packageHandlers[PackageTypes.ChangeWeapon ] = package_get_change_weapon;