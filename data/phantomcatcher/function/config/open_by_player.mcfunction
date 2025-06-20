
    # Config data for dialog
    scoreboard objectives add phantomcatcher.function dummy
    scoreboard players set *24000 phantomcatcher.function 24000
    data \
        modify storage phantomcatcher:function config \
        set from storage phantomcatcher
    execute \
        store result score *charge_period phantomcatcher.function \
        run data get storage phantomcatcher:function config.charge_period
    execute \
        store result storage phantomcatcher:function config.charge_period int 1 \
        run scoreboard players operation *charge_period phantomcatcher.function /= *24000 phantomcatcher.function
    # True/False initials
    data modify storage phantomcatcher:function config.is_catch_renamed_catchables_true set value false
    data modify storage phantomcatcher:function config.is_catch_renamed_catchables_false set value false
    data modify storage phantomcatcher:function config.is_reset_on_load_true set value false
    data modify storage phantomcatcher:function config.is_reset_on_load_false set value false
    execute \
        if data storage phantomcatcher:function { config: { catch_renamed_catchables: true } } \
        run data modify storage phantomcatcher:function config.is_catch_renamed_catchables_true set value 1b
    execute \
        if data storage phantomcatcher:function { config: { catch_renamed_catchables: false } } \
        run data modify storage phantomcatcher:function config.is_catch_renamed_catchables_false set value 1b
    execute \
        if data storage phantomcatcher:function { config: { reset_on_load: true } } \
        run data modify storage phantomcatcher:function config.is_reset_on_load_true set value 1b
    execute \
        if data storage phantomcatcher:function { config: { reset_on_load: false } } \
        run data modify storage phantomcatcher:function config.is_creset_on_load_false set value 1b
    # Command Template
    data \
        modify storage phantomcatcher:function config.command_template \
        set value "function phantomcatcher:dialog/config/apply {charge_period:$(charge_period),catch_square_size:$(catch_square_size),catch_renamed_catchables:$(catch_renamed_catchables),reset_on_load:$(reset_on_load)}"

    # Showing dialog
    function phantomcatcher:dialog/config/show with storage phantomcatcher:function config

    # Clear data
    scoreboard objectives remove phantomcatcher.function
    data remove storage phantomcatcher:function config