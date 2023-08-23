advancement punched{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
              "type": "minecraft:villager",
              "nbt": "{Tags:[\"count_punch_AS\"]}"
            }
          }
        ]
      }
    }
  },
  "rewards": {
    "function": "mtnt.main:increment_punch"
  }
}

loot_table loot_llama{
  "type": "minecraft:generic",
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:sequence",
          "children": [
            {
              "type": "minecraft:item",
              "weight": 1,
              "name": "minecraft:iron_ingot"
            },
            {
              "type": "minecraft:item",
              "weight": 1,
              "name": "minecraft:gold_ingot"
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:diamond"
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:redstone"
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:coal"
            },
            {
              "type": "minecraft:item",
              "weight": 2,
              "name": "minecraft:bricks"
            },
            {
              "type": "minecraft:item",
              "weight": 2,
              "name": "minecraft:oak_planks"
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:netherite_scrap"
            }
          ]
        }
      ],
      "functions": [
        {
          "function": "minecraft:set_count",
          "count": {
            "min": 1,
            "max": 3
          }
        }
      ]
    }
  ]
}

loot_table mystery_tnt{
  "type": "minecraft:generic",
  "pools": [
    {
      "rolls": 1,
      "bonus_rolls": 0,
      "entries": [
        {
          "type": "minecraft:sequence",
          "children": [
            {
              "type": "minecraft:item",
              "name": "minecraft:enchanted_golden_apple",
              "functions": [
                {
                  "function": "minecraft:set_count",
                  "count": 1
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Mushroom",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": false
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:potion",
              "functions": [
                {
                  "function": "minecraft:set_potion",
                  "id": "minecraft:long_swiftness"
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Star",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": true
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:potion",
              "functions": [
                {
                  "function": "minecraft:set_potion",
                  "id": "minecraft:strong_leaping"
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Star",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": true
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:potion",
              "functions": [
                {
                  "function": "minecraft:set_potion",
                  "id": "minecraft:long_regeneration"
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Star",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": true
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:potion",
              "functions": [
                {
                  "function": "minecraft:set_potion",
                  "id": "minecraft:healing"
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Star",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": true
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:potion",
              "functions": [
                {
                  "function": "minecraft:set_potion",
                  "id": "minecraft:invisibility"
                },
                {
                  "function": "minecraft:set_name",
                  "entity": "this",
                  "name": {
                    "text" : "Star",
                    "italic": false
                  }
                },
                {
                  "function": "minecraft:set_lore",
                  "entity": "this",
                  "lore": [
                    {
                      "text": "Right Click to use it",
                      "color": "minecraft:dark_purple",
                      "italic": false
                    }
                  ],
                  "replace": true
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

entities all_living{
  
  glow_squid
  pig
  
  wolf
  bat
  witch
  polar_bear
  spider
  
  guardian
  ender_dragon
  piglin_brute
  magma_cube
  
  tropical_fish
  wither
  frog
  creeper
  
  fox
  illusioner
  iron_golem
  player
  ravager
  chicken
  llama
  piglin
  axolotl
  wither_skeleton
  cow
  parrot
  villager
  blaze
  salmon
  bee
  
  silverfish
  cave_spider
  ghast
  mule
  vex
  vindicator
  enderman
  
  trader_llama
  elder_guardian
  turtle
  rabbit
  shulker
  goat
  tadpole
  pillager
  cod
  
  hoglin
  
  evoker
  cat
  mooshroom
  slime
  strider
  dolphin
  horse
  wandering_trader
  endermite
  squid
  warden
  donkey
  allay
  pufferfish
  sheep
  snow_golem
  panda
  ocelot
}

entities ded_mobs{
  husk
  skeleton
  phantom
  drowned
  zombie_horse
  stray
  zombie
  zoglin
  giant
  skeleton_horse
  zombie_villager
  zombified_piglin
}

entities passive{
  sheep
  cow
  chicken
  pig
  ocelot
  horse
}