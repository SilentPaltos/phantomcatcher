
    tellraw @s [ { "text": "\n [", "color": "red" }, { "translate": "pack.phantomcatcher.name", "hoverEvent": {"action": "show_text", "value": { "translate": "pack.phantomcatcher.description" } } }, "]\n" ]
    tellraw @s [ { "translate": "pack.phantomcatcher.author", "color": "yellow" }, { "text": " SilentPaltos", "color": "green" } ]
    tellraw @s [ { "translate": "pack.phantomcatcher.version", "color": "yellow" }, { "text": " Alpha 0.1.0", "color": "green" } ]
    tellraw @s [ { "text": "\n> [", "color": "aqua" }, { "translate": "pack.phantomcatcher.get_links", "color": "aqua", "clickEvent": {"action": "run_command","value":"/function phantomcatcher:info/links"} }, { "text": "]\n", "color": "aqua" } ]