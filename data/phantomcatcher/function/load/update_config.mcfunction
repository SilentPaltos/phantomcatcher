
    # Версия данных датапака
    scoreboard players set *version phantomcatcher.config 2

    # Период зарядки
    execute \
        store result score *charge_period phantomcatcher.config \
        run data get storage phantomcatcher charge_period

    # Может ли ловец поймать переименованных сущностей
    execute \
        store result score *catch_renamed_catchables phantomcatcher.config \
        run data get storage phantomcatcher catch_renamed_catchables

    # [Охватываемый ловцом квадрат]

        # Временная константа 16
        scoreboard players set *16 phantomcatcher.config 16

        # Стартовая точка области
        execute \
            store result score *catch_square_dstart phantomcatcher.config \
            run data get storage phantomcatcher catch_square_size
        scoreboard players remove *catch_square_dstart phantomcatcher.config 1
        execute \
            if score *catch_square_dstart phantomcatcher.config matches ..-1 \
            run scoreboard players set *catch_square_dstart phantomcatcher.config 0
        execute \
            if score *catch_square_dstart phantomcatcher.config matches 1.. \
            run scoreboard players operation *catch_square_dstart phantomcatcher.config *= *16 phantomcatcher.config

        # Длина диагонали квадрата
        execute \
            store result score *catch_square_diagonal phantomcatcher.config \
            run data get storage phantomcatcher catch_square_size 2
        scoreboard players remove *catch_square_diagonal phantomcatcher.config 1
        execute \
            if score *catch_square_diagonal phantomcatcher.config matches 1.. \
            run scoreboard players operation *catch_square_diagonal phantomcatcher.config *= *16 phantomcatcher.config
        scoreboard players remove *catch_square_diagonal phantomcatcher.config 1
        execute \
            if score *catch_square_diagonal phantomcatcher.config matches ..-1 \
            run scoreboard players set *catch_square_diagonal phantomcatcher.config 0

        # Очистка
        scoreboard players reset *16 phantomcatcher.config

