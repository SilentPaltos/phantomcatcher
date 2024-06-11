
    scoreboard players set *16 phantomcatcher.config 16

    # Версия датапака
    scoreboard players set *version phantomcatcher.config 0



    # Период зарядки
        execute store result score *charge_period phantomcatcher.config run data get storage phantomcatcher charge_period


    # Охватываемый ловцом фантомов квадрат

        execute store result score *catch_square_dstart phantomcatcher.config run data get storage phantomcatcher catch_square_size
            scoreboard players remove *catch_square_dstart phantomcatcher.config 1
            execute if score *catch_square_dstart phantomcatcher.config matches ..-1 run scoreboard players set *catch_square_dstart phantomcatcher.config 0
            execute if score *catch_square_dstart phantomcatcher.config matches 1.. run scoreboard players operation *catch_square_dstart phantomcatcher.config *= *16 phantomcatcher.config

        execute store result score *catch_square_diagonal phantomcatcher.config run data get storage phantomcatcher catch_square_size 2
            scoreboard players remove *catch_square_diagonal phantomcatcher.config 1
            execute if score *catch_square_diagonal phantomcatcher.config matches 1.. run scoreboard players operation *catch_square_diagonal phantomcatcher.config *= *16 phantomcatcher.config
        
            scoreboard players remove *catch_square_diagonal phantomcatcher.config 1
            execute if score *catch_square_diagonal phantomcatcher.config matches ..-1 run scoreboard players set *catch_square_diagonal phantomcatcher.config 0

    scoreboard players reset *16 phantomcatcher.config

