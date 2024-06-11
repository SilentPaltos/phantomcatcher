
    # Защита переименованых фантомов от ловцов
    execute as @e[ type = phantom, predicate =! phantomcatcher:entity/phantom/protected ] if data entity @s CustomName run function phantomcatcher:entity/phantom/get_protected

    # Ловля фантомов ловцами
    execute unless score *catch_square_diagonal phantomcatcher.config matches 0 if function phantomcatcher:tick/exist_unprotected_phantom as @e[ predicate = phantomcatcher:entity/phantomcatcher, predicate = phantomcatcher:entity/ticking, sort = random ] run function phantomcatcher:entity/phantomcatcher/catch_phantoms

    # Защита всех оставшихся фантомов
    execute as @e[ type = phantom ] run function phantomcatcher:entity/phantom/get_protected