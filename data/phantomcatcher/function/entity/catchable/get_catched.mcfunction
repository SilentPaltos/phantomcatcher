
    # Данные ускоряющие смерть сущности и делюащие её менее заметной
    data merge entity @s { Health: 1f, Silent: 1b, DeathLootTable: "" }
    effect give @s invisibility infinite 0 true

    tp @s ~ -1000 ~

    # Защита для последующего прерывание после ловли всех сущностей
    function phantomcatcher:entity/phantom/get_protected