
    # Обновление конфигурации
    function phantomcatcher:config

    # Обновление данных из конфигурации
    scoreboard objectives add phantomcatcher.config dummy
        function phantomcatcher:load/update_config
        

    # Скорборды с данными сущностей

        # Общие
        scoreboard objectives add phantomcatcher.version dummy

        # Ловец фантомов
        scoreboard objectives add phantomcatcher.charge_time dummy
        scoreboard objectives add phantomcatcher.is_charged dummy
        scoreboard objectives add phantomcatcher.is_ticking dummy