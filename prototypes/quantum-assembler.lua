require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

data:extend{
    {
        name = "aop-quantum-assembler",
        type = "assembling-machine",
        icon = "__Age-of-Production__/graphics/icons/quantum-assembler.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-quantum-assembler", amount=1}}
        },
        max_health = 500,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["assembling-machine"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"quantum-assembling", "quantum-assembling-or-crafting", "quantum-assembling-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "5MW",
        heating_energy = "500kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 1
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-shadow.png",
                      priority = "high",
                      width = 520,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 100,
                      animation_speed = 0.35,
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 320,
                      height = 320,
                      frame_count = 100,
                      lines_per_file = 8,
                      animation_speed = 0.35,
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 5
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 320,
                              height = 320,
                              frame_count = 100,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 5
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 320,
                              height = 320,
                              frame_count = 100,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/quantum-assembler/quantum-assembler-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 5
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          --[[{
            light = {
              type = "basic",
              intensity = 1,
              size = 15
            }
          }]]
        --},
        working_sound =
        {
          sound = {filename = "__Age-of-Production__/sounds/quantum-assembler.ogg", volume = 0.45},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-quantum-assembler-created",
              },
            }
          }
        },
      },
}