
    # Если нет ловимых сущностей, которых можно поймать, функция прерывается
    execute \
        unless function phantomcatcher:tick/exist_unprotected_catchable \
        run return fail

    # Поимка ловимых сущностей

        # Координаты

            # X
            execute \
                store result score *pos_x phantomcatcher.config \
                run data get entity @s Pos[0] 0.0625
            execute \
                store result storage phantomcatcher macro_input.x int 16 \
                run scoreboard players get *pos_x phantomcatcher.config
            
            # Z
            execute \
                store result score *pos_z phantomcatcher.config \
                run data get entity @s Pos[2] 0.0625
            execute \
                store result storage phantomcatcher macro_input.z int 16 \
                run scoreboard players get *pos_z phantomcatcher.config

        # Размер области
        
        execute \
            store result storage phantomcatcher macro_input.d_start int -1 \
            run scoreboard players get *catch_square_dstart phantomcatcher.config
        execute \
            store result storage phantomcatcher macro_input.diagonal int 1 \
            run scoreboard players get *catch_square_diagonal phantomcatcher.config

        # Поимка ловимых сущностей с полученными данными
        execute \
            at @s \
            run function phantomcatcher:entity/phantomcatcher/catch/in_area__macro with storage phantomcatcher macro_input

        # Очистка
        data remove storage phantomcatcher macro_input
        scoreboard players reset *pos_x phantomcatcher.config
        scoreboard players reset *pos_z phantomcatcher.config

    