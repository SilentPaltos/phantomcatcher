
    advancement revoke @s only phantomcatcher:_trigger/hurt_phantomcatcher

    execute if entity @s[ gamemode =! creative ] as @e[ predicate = phantomcatcher:entity/phantomcatcher, predicate = phantomcatcher:entity/phantomcatcher/hurted ] positioned as @s run function phantomcatcher:entity/phantomcatcher/mine

    execute if entity @s[ gamemode = creative ] as @e[ predicate = phantomcatcher:entity/phantomcatcher, predicate = phantomcatcher:entity/phantomcatcher/hurted ] positioned as @s run function phantomcatcher:entity/phantomcatcher/kill