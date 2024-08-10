
    # Если нет ловимых сущностей, которых можно поймать, функция прерывается
        
        execute \
            unless function phantomcatcher:tick/exist_unprotected_catchable \
        run \
            return fail

    # Перезапись координат ловца с выравниванием по чанкам

        # Координаты

            execute \
                store result score *pos_x phantomcatcher.config \
            run \
                data get entity @s Pos[0] 0.0625

            execute \
                store result storage phantomcatcher run_function.x int 16 \
            run \
                scoreboard players get *pos_x phantomcatcher.config



            execute \
                store result score *pos_z phantomcatcher.config \
            run \
                data get entity @s Pos[2] 0.0625
            
            execute \
                store result storage phantomcatcher run_function.z int 16 \
            run \
                scoreboard players get *pos_z phantomcatcher.config

        # Размер области
        
            execute \
                store result storage phantomcatcher run_function.d_start int -1 \
            run \
                scoreboard players get *catch_square_dstart phantomcatcher.config
            
            execute \
                store result storage phantomcatcher run_function.diagonal int 1 \
            run \
                scoreboard players get *catch_square_diagonal phantomcatcher.config

    # Поимка ловимых сущностей с сохранением успешности
    
        function phantomcatcher:entity/phantomcatcher/catch/in_area__macro with storage phantomcatcher run_function

    # Удаление использованных данных
    
        data remove storage phantomcatcher run_function
        scoreboard players reset *pos_x phantomcatcher.config
        scoreboard players reset *pos_z phantomcatcher.config

    