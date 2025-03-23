if mods["maraxsis"] then 
    data.raw.technology["aop-greenhouse"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"hydraulic-science-pack", 1}
    }
    data.raw.technology["aop-greenhouse"].prerequisites = {"aop-woodworking", "cryogenic-science-pack","hydraulic-science-pack"}
    
    data.raw["assembling-machine"]["aop-hydraulic-plant"].hidden= true
    data.raw["item"]["aop-hydraulic-plant"].hidden =  true
    data.raw["item"]["aop-hydraulic-plant"].hidden_in_factoriopedia =  true
    data.raw["recipe"]["aop-hydraulic-plant"] = nil
    data.raw["recipe"]["aop-hydraulic-plant-recycling"] = nil
    data.raw["technology"]["aop-hydraulics"] = nil

    local function add_crafting_categories(entity_type, entity_name, categories)
        local entity = data.raw[entity_type][entity_name]
        for _,category in pairs(categories) do
          table.insert(entity.crafting_categories, category)
        end
      end
      add_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"hydraulics", "hydraulics-or-chemistry", "hydraulics-or-organic", "hydraulics-or-chemistry-or-cryogenics", "synthesis-or-chemistry"})
    data.raw["assembling-machine"]["maraxsis-hydro-plant"].effect_receiver = { base_effect = { productivity = 0.25, quality = 2.5 }}
    data.raw.technology["aop-specialized-science"].prerequisites = {"aop-armory", "aop-petrochemistry", "aop-hybridation", "cryogenic-science-pack", "maraxsis-deepsea-research"}
    data.raw.technology["aop-core-mining"].prerequisites = {"aop-electromechanics", "promethium-science-pack", "maraxsis-project-seadragon"}
    data.raw.technology["aop-core-mining"].unit.ingredients = {
                  {"automation-science-pack", 1},
                  {"logistic-science-pack", 1},
                  {"chemical-science-pack", 1},
                  {"production-science-pack", 1},
                  {"utility-science-pack", 1},
                  {"space-science-pack", 1},
                  {"metallurgic-science-pack", 1},
                  {"agricultural-science-pack", 1},
                  {"electromagnetic-science-pack", 1},
                  {"cryogenic-science-pack", 1},
                  {"hydraulic-science-pack", 1},
                  {"promethium-science-pack", 1}}
                  data.raw.recipe["aop-core-miner"].surface_conditions = {{property = "pressure", min = 400000, max = 400000}}
        data.raw.recipe["aop-quantum-stabilizer"].ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "maraxsis-conduit",       amount = 20},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 250},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 800},
        {type = "item", name = "electric-engine-unit", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 300},
                    }
         data.raw.recipe["aop-petroleum-gas-dehydrogenation"].results = {
                {type = "item", name = "carbon", amount = 2},
                {type = "fluid", name = "maraxsis-hydrogen", amount = 4},
         }
        data.raw.planet["maraxsis"].surface_properties.density = 4700
        data.raw.planet["maraxsis-trench"].surface_properties.density = 4700
    end
    
    if mods["corrundum"] then 
    data.raw.technology["aop-arc-furnace"].prerequisites = {"metallurgic-science-pack","electrochemical-science-pack"}
    data.raw.technology["aop-arc-furnace"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"electrochemical-science-pack",1}
    }
    
    data.raw.technology["aop-petrochemistry"].prerequisites = {"electromagnetic-science-pack", "coal-liquefaction","electrochemical-science-pack"}
    data.raw.technology["aop-petrochemistry"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"electrochemical-science-pack",1}
    }
    data.raw.planet["corrundum"].surface_properties.density = 4000
    end
    
    if mods["secretas"] then 
    data.raw.technology["aop-electromechanics"].prerequisites = {"quantum-processor","planet-discovery-secretas"}
    data.raw.technology["aop-electromechanics"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"golden-science-pack", 1},
    }
    
    
    data.raw.technology["aop-advanced-recycling"].prerequisites = {"steam-recycler"}
    data.raw.technology["aop-advanced-recycling"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"golden-science-pack", 1},
    }
    
    data.raw.recipe["aop-salvager"].surface_conditions = {{property = "pressure", min = 200, max = 200}}
    data.raw.item["aop-salvager"].default_import_location = "frozeta"
    data.raw["furnace"]["aop-salvager"].result_inventory_size = 40
    data.raw.planet["frozeta"].surface_properties.density = 3100
    end
    
    if mods["tenebris-prime"] or mods["tenebris"] then 
    data.raw.technology["aop-automation-4"].prerequisites = {"productivity-module-3", "speed-module-3", "efficiency-module-3", "automation-3", "utility-science-pack", "electromagnetic-science-pack", "bioluminescent-science-pack"}
    data.raw.technology["aop-automation-4"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"bioluminescent-science-pack", 1},
    }
    
    data.raw.recipe["aop-advanced-assembling-machine"].surface_conditions = {{property = "pressure", min = 3000, max = 3000}}
    data.raw.item["aop-advanced-assembling-machine"].default_import_location = "tenebris"
    
    
    data.raw.technology["aop-quantum-machinery"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"bioluminescent-science-pack", 1},
            {"promethium-science-pack", 1}
    }
    data.raw.planet["tenebris"].surface_properties.density = 5200
    end
    
    if mods["terrapalus"] then 
    data.raw.technology["aop-hybridation"].prerequisites = {"captive-biter-spawner", "quantum-processor","inhibitor-lamp"}
    data.raw.recipe["aop-biochemical-facility"].ingredients = {
            {type = "item", name = "quantum-processor",   amount = 150},
            {type = "item", name = "steel-plate",       amount = 100},
            {type = "item", name = "carbon-fiber", amount = 200},
            {type = "item", name = "biochamber", amount = 2},
            {type = "item", name = "nutrients", amount = 500},
            {type = "item", name = "uranium-235", amount = 200},
            {type = "item", name = "biter-egg", amount = 5},
            {type = "item", name = "pentapod-egg", amount = 5},
            {type = "item", name = "inhibitor-lamp", amount = 5},
        }
    data.raw.item["aop-biochemical-facility"].default_import_location = "terrapalus"
    data.raw.planet["terrapalus"].surface_properties.density = 2200
    end
    
    if mods["castra"] then
    data.raw.technology["aop-armory"].prerequisites = {"metallurgic-science-pack", "battlefield-science-pack"}
    data.raw.technology["aop-armory"].unit.ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1},
                    {"battlefield-science-pack", 1}
                  }
    data.raw.item["aop-armory"].default_import_location = "castra"
    data.raw.recipe["aop-armory"].surface_conditions = {{property = "pressure", min = 1254, max = 1254}}
    data.raw.recipe["aop-armory"].ingredients = {
            {type = "item", name = "assembling-machine-2",   amount = 1},
            {type = "item", name = "advanced-circuit",   amount = 50},
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "nickel-plate", amount = 35},
            {type = "item", name = "gunpowder",   amount = 100},
        }
    data.raw["assembling-machine"]["forge"].effect_receiver = { base_effect = { productivity = 0.0, quality = 1 }}
    data.raw.planet["castra"].surface_properties.density = 5000
    end
    if mods["planet-muluna"] then 
        data.raw.planet["muluna"].surface_properties.density = 3400
    end

    if mods["Cerys-Moon-of-Fulgora"] then 
        data.raw.planet["cerys"].surface_properties.density = 1200
    end

    if mods["cubium"] then 
        data.raw.planet["cubium"].surface_properties.density = 2300
    end

    if mods["planet-arrakis"] then 
        data.raw.planet["arrakis"].surface_properties.density = 2900
    end



    if mods["erm-toss"] then 
        data.raw.planet["aiur"].surface_properties.density = 5500
    end

    if mods["erm-zerg"] then 
        data.raw.planet["char"].surface_properties.density = 5200
    end

-- Aiur and Char for some reason aren't changing their density. If someone knows how to help please do so.

    if mods["Factorio-Tiberium"] then 
        data.raw.planet["tiber"].surface_properties.density = 2700
    end

    if mods["janus"] then 
        data.raw.planet["janus"].surface_properties.density = 2300
    end

    if mods["lignumis"] then 
        data.raw.planet["lignumis"].surface_properties.density = 2000
    end

    if mods["metal-and-stars"] then 
        data.raw.planet["shipyard"].surface_properties.density = 100
        data.raw.planet["nix"].surface_properties.density = 2900
        data.raw.planet["ringworld"].surface_properties.density = 500
    end

    if mods["dea-dia-system"] then 
        data.raw.planet["planet-dea-dia"].surface_properties.density = 1500
        data.raw.planet["lemures"].surface_properties.density = 3300
        data.raw.planet["prosephina"].surface_properties.density = 3350
    end

    if mods["Moshine"] then 
        data.raw.planet["moshine"].surface_properties.density = 4200
    end

    if mods["naufulglebunusilo"] then 
        data.raw.planet["naufulglebunusilo"].surface_properties.density = 10000
    end    