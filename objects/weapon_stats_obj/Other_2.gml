/// @description Initialize weapon stats

globalvar weapon_stats;

weapon_stats = json_decode(@'
{
    "rifle" : {
        "name" : "Rifle",
        "class" : "Rifle",
        "ammo" : 30,
        "semiauto" : 3,
        "auto" : 6,
        "spread" : 5,
        "range" : 500,
        "sprite" : "rifle_sp"
    },
    
    "pistol" : {
        "name" : "Pistol",
        "class" : "Pistol",
        "ammo" : 15,
        "semiauto" : 1,
        "auto" : 3,
        "spread" : 5,
        "range" : 450,
        "sprite" : "pistol_sp"
    },
    
    "last" : {
    
    }
}
');

show_debug_message(string(weapon_stats));
