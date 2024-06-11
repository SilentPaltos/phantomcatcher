
    advancement revoke @s only phantomcatcher:_trigger/place_phantomcatcher

    execute positioned as @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer ] run function phantomcatcher:_entity/phantomcatcher_placer/place/try

    kill @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer ]