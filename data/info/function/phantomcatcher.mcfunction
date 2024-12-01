
        tellraw @s [ \
            { \
                "translate": "pack.phantomcatcher.info", \
                "with": [ \
                    { \
                        "translate": "emoji.phantomcatcher.phantomcatcher", \
                        "font": "phantomcatcher:emoji", \
                        "shadow_color": 0 \
                    }, \
                    { \
                        "translate": "pack.phantomcatcher.name", \
                        "color": "red", \
                        "hoverEvent": { \
                            "action": "show_text", \
                            "value": { "translate": "pack.phantomcatcher.description" } \
                        } \
                    }, \
                    { \
                        "translate": "pack.phantomcatcher.author", \
                        "color": "yellow", \
                        "with": [ \
                            { \
                                "text": "SilentPaltos", \
                                "color": "green" \
                            } \
                        ] \
                    }, \
                    { \
                        "translate": "pack.phantomcatcher.version", \
                        "color": "yellow", \
                        "with": [ \
                            { \
                                "text": "Alpha 0.1.4", \
                                "color": "green" \
                            } \
                        ] \
                    } \
                ] \
            }, \
            { \
                "text": "\n> [", \
                "color": "aqua" \
            }, \
            { \
                "translate": "pack.phantomcatcher.get_links", \
                "color": "aqua", \
                "clickEvent": { \
                    "action": "run_command", \
                    "value": "/function phantomcatcher:info/links" \
                } \
            }, \    
            { \
                "text": "]\n", \
                "color": "aqua" \
            } \
        ]