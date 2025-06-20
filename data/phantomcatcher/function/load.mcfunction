
    # Config reset
    execute \
        if data storage minecraft:phantomcatcher { reset_on_load: true } \
        run function phantomcatcher:config

    # Config Update
    scoreboard objectives add phantomcatcher.config dummy
    function phantomcatcher:load/update_config

    # [Скорборды с данными сущностей]

        # Версия данных
        scoreboard objectives add phantomcatcher.version dummy

        # Ловец фантомов
        scoreboard objectives add phantomcatcher.charge_time dummy
        scoreboard objectives add phantomcatcher.is_charged dummy
        scoreboard objectives add phantomcatcher.is_ticking dummy