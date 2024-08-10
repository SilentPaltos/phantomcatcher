
    # Название дата-пака
    
        tellraw @s [ \
            { \
                "text": "\n", \
                "color": "red" \
            }, \
            { \
                "translate": "emoji.phantomcatcher.phantomcatcher", \
                "font": "phantomcatcher:emoji", \
                "color": "white" \
            }, \
            { \
                "text": " [" \
            }, \
            { \
                "translate": "pack.phantomcatcher.name", \
                "hoverEvent": { \
                    "action": "show_text", \
                    "value": { "translate": "pack.phantomcatcher.description" } \
                } \
            }, \
            { \
                "text": "]\n" \
            } \
        ]

    # Автор дата-пака
    
        tellraw @s [ \
            { \
                "translate": "pack.phantomcatcher.author", \
                "color": "yellow" \
            }, \
            { \
                "text": " SilentPaltos", \
                "color": "green" \
            } \
        ]
    
    # Версия дата-пака
    
        tellraw @s [ \
            { \
                "translate": "pack.phantomcatcher.version", \
                "color": "yellow", \
                "with": [ \
                    { \
                        "translate": "pack.phantomcatcher.version_type", \
                        "color": "green" \
                    }, \
                    { \
                        "text":"0.1.1", \
                        "color": "green" \
                    } \
                ] \
            } \
        ]
    
    # Ссылки
    
        tellraw @s [ \
            { \
                "text": "\n> [", \
                "color": "aqua" \
            }, \
            { \
                "translate": "pack.phantomcatcher.get_links", \
                "clickEvent": { \
                    "action": "run_command", \
                    "value": "/function phantomcatcher:info/links" \
                } \
            }, \
            { \
                "text": "]\n" \
            } \
        ]