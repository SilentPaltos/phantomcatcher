
    # Обновление номера версии
    
        scoreboard players operation @s phantomcatcher.version = *version phantomcatcher.config

    # Обновление тега у устарвших фантомов.
    # Также данный тег встречается у фантомов, созданных специальным яйцом призыва. ( НЕОБХОДИМО )
    
        execute \
            if entity @s[ \
                type = phantom, \
                tag = phantomcatcher.phantom.protected \
            ] \
        run \
            function phantomcatcher:tick/update_version/phantom