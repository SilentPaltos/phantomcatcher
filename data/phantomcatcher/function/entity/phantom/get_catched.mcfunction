
    # Данные ускоряющие смерть фантома и делюащие её менее заметной
    data merge entity @s { Health: 1f, Silent: 1b, DeathLootTable: "" }
    effect give @s invisibility infinite 0 true

    tp @s ~ -1000 ~

    # Защита для последующего прервание после ловли всех фантомов
    function phantomcatcher:entity/phantom/get_protected