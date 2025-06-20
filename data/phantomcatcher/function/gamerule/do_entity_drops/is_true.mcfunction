
    # Запись значения игрового правила в скорборд
    execute \
        store result score *gamerule.minecraft.do_entity_drops phantomcatcher.config \
        run gamerule doEntityDrops

    # Возвращение соответствующего значения
    execute \
        if score *gamerule.minecraft.do_entity_drops phantomcatcher.config matches 1 \
        run return 1
    return 0