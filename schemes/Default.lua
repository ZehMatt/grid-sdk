--=========== Copyright © 2019, Planimeter, All rights reserved. ===========--
--
-- Purpose: Default scheme
--
--==========================================================================--

local t                       = scheme( "Default" )

t.colors                      = {
    black                     = color(  31,  35,  36,         255 ),
    gray                      = color( 104, 106, 107,         255 ),
    gold                      = color( 155, 140, 103,         255 ),
    white                     = color( 204, 216, 219,         255 )
}

t.button                      = {
    backgroundColor           = color( t.colors.black, 0.27 * 255 ),
    borderColor               = color( t.colors.gray,  0.42 * 255 ),
    textColor                 = color( 163, 167, 168,         255 ),

    mouseover                 = {
        backgroundColor       = color( t.colors.gold,  0.27 * 255 ),
        borderColor           = color( t.colors.gold,  0.42 * 255 )
    },

    mousedown                 = {
        backgroundColor       = color( t.colors.gold,  0.14 * 255 ),
        borderColor           = color( t.colors.gold,  0.27 * 255 )
    },

    disabled                  = {
        backgroundColor       = color( t.colors.black, 0.14 * 255 ),
        borderColor           = color( t.colors.black, 0.14 * 255 ),
        textColor             = t.colors.gray
    }
}

t.checkbox                    = {
    icon                      = love.graphics.newImage( "images/gui/check.png" ),
    iconColor                 = color( 163, 167, 168,         255 ),
    borderColor               = color( t.colors.gray,  0.66 * 255 ),
    textColor                 = color( 163, 167, 168,         255 ),

    mouseover                 = {
        borderColor           = color( t.colors.gold,  0.42 * 255 )
    },

    mousedown                 = {
        borderColor           = color( t.colors.gold,  0.27 * 255 )
    },

    disabled                  = {
        iconColor             = t.colors.gray,
        textColor             = t.colors.gray
    }
}

t.closebutton                 = {
    icon                      = love.graphics.newImage( "images/gui/close.png" ),
    iconColor                 = t.colors.white,

    mouseover                 = {
        iconColor             = color( t.colors.gold,         255 )
    },

    mousedown                 = {
        iconColor             = color( t.colors.gold,  0.66 * 255 )
    }
}

t.commandbutton               = {
    backgroundColor           = color(  67,  68,  69,  0.86 * 255 ),
    borderColor               = color(  17,  18,  18,  0.14 * 255 )
}

t.commandbuttongroup          = {
    borderColor               = color(  17,  18,  18,  0.14 * 255 )
}

t.dropdownlist                = {
    icon                      = love.graphics.newImage( "images/gui/arrow_down.png" ),
}

t.dropdownlistitem            = {
    backgroundColor           = color(  67,  68,  69,  0.97 * 255 ),
    borderColor               = color( t.colors.gold,  0.97 * 255 ),

    mouseover                 = {
        backgroundColor       = color( t.colors.gold,  0.97 * 255 ),
        textColor             = color( t.colors.black,        255 )
    },

    selected                  = {
        backgroundColor       = color( t.colors.gold,  0.97 * 255 ),
        textColor             = color( t.colors.black,        255 )
    }
}

t.frame                       = {
    backgroundColor           = color(  67,  68,  69,  0.97 * 255 ),
    borderColor               = color( 240, 246, 247,  0.07 * 255 ),
    titleTextColor            = t.colors.white,

    defocus                   = {
        titleTextColor        = color( t.colors.white, 0.24 * 255 )
    }
}

t.frametab                    = {
    backgroundColor           = color(  59,  61,  61,  0.93 * 255 ),
    borderColor               = color(  17,  18,  18,  0.14 * 255 ),

    mouseover                 = {
        backgroundColor       = color( t.colors.gold,  0.27 * 255 )
    },

    selected                  = {
        backgroundColor       = t.frame.backgroundColor
    }
}

t.hudframe                    = {
    backgroundColor           = color( t.colors.black, 0.70 * 255 )
}

t.hudgamemenunavigation       = {
    backgroundColor           = color( t.colors.white, 0.07 * 255 )
}

t.hudgamemenunavigationbutton = {
    borderColor               = t.colors.gold,
    textColor                 = color( t.colors.white, 0.42 * 255 ),

    mouseover                 = {
        textColor             = color( t.colors.gold,  0.42 * 255 )
    }
}

t.hudspeechballoons           = {
    textColor                 = t.colors.gold
}

t.hudmoveindicator            = {
    textColor                 = t.colors.white,
    smallTextColor            = t.colors.gray,
 -- indicatorColor            = color( 157, 168,  57,         255 )
    indicatorColor            = t.colors.gold
}

t.hudprofiler                 = {
    textColor                 = t.colors.white
}

t.itembutton                  = {
    textColor                 = t.colors.gold
}

t.label                       = {
    textColor                 = color( 163, 167, 168,         255 )
}

t.mainmenu                    = {
    backgroundColor           = color( t.colors.black, 0.70 * 255 ),
    logo                      = love.graphics.newImage( "images/gui/logo.png" ),
    logoSmall                 = love.graphics.newImage( "images/gui/logo_small.png" )
}

t.mainmenubutton              = {
    t                         = {
        textColor             = t.colors.gray,

        mouseover             = {
            textColor         = t.colors.gold
        },

        mousedown             = {
            textColor         = color( t.colors.gold,  0.66 * 255 )
        }
    },

    dark                      = {
        textColor             = t.colors.white,

        mouseover             = {
            textColor         = t.colors.gold
        },

        mousedown             = {
            textColor         = color( t.colors.gold,  0.66 * 255 )
        },

        disabled              = {
            textColor         = color(  67,  68,  69,         255 )
        }
    }
}

t.mainmenuclosebutton         = {
    icon                      = love.graphics.newImage( "images/gui/close_large.png" ),

    t                         = {
        iconColor             = t.colors.gray,

        mouseover             = {
            iconColor         = t.colors.gold
        },

        mousedown             = {
            iconColor         = color( t.colors.gold,  0.66 * 255 )
        }
    },

    dark                      = {
        iconColor             = t.colors.white,

        mouseover             = {
            iconColor         = t.colors.gold
        },

        mousedown             = {
            iconColor         = color( t.colors.gold,  0.66 * 255 )
        }
    }
}

t.progressbar                 = {
    backgroundColor           = color( t.colors.white, 0.07 * 255 ),
    foregroundColor           = t.colors.gold
}

t.radiobutton                 = {
    foreground                = love.graphics.newImage( "images/gui/radiobutton_foreground.png" ),
    icon                      = love.graphics.newImage( "images/gui/selection_dot.png" ),
    iconColor                 = color( 163, 167, 168,         255 ),
    borderColor               = color( t.colors.gray,  0.86 * 255 ),
    textColor                 = color( 163, 167, 168,         255 ),

    mouseover                 = {
        borderColor           = color( t.colors.gold,  0.42 * 255 )
    },

    mousedown                 = {
        borderColor           = color( t.colors.gold,  0.27 * 255 )
    },

    disabled                  = {
        iconColor             = t.colors.gray,
        textColor             = t.colors.gray
    }
}

t.scrollbar                   = {
    backgroundColor           = color( t.colors.gold,  0.86 * 255 ),

    disabled                  = {
        backgroundColor       = color( t.colors.black, 0.14 * 255 )
    }
}

t.slider                      = {
    backgroundColor           = color( t.colors.gray,  0.66 * 255 ),
    fontColor                 = color( t.colors.gray,  0.66 * 255 ),

    disabled                  = {
        backgroundColor       = color( t.colors.black, 0.14 * 255 ),
        fontColor             = color( t.colors.black, 0.14 * 255 )
    }
}

t.textbox                     = {
    borderColor               = color( t.colors.gray,  0.66 * 255 ),
    textColor                 = t.colors.gray,
    selectionColor            = color( t.colors.gold,  0.42 * 255 ),

    mouseover                 = {
        borderColor           = color( t.colors.gold,  0.42 * 255 ),
        textColor             = color( 163, 167, 168,         255 )
    },

    focus                     = {
        borderColor           = color( t.colors.gold,  0.27 * 255 ),
        textColor             = color( 163, 167, 168,         255 )
    },

    disabled                  = {
        textColor             = t.colors.gray
    }
}

t.bindlistpanel               = {
    backgroundColor           = color( t.colors.black, 0.66 * 255 ),
    borderColor               = color( t.colors.gray,  0.66 * 255 )
}

t.bindlistheader              = {
    borderColor               = color(  15,  15,  15,         255 ),
}

-- NOTE: The following arguments to `newFont` are undocumented.
local dpiscale = love.graphics.getDPIScale()
local r_window_highdpi = convar.getConvar( "r_window_highdpi" )
if ( r_window_highdpi:getNumber() == 2 ) then
    dpiscale = 1
end

t.mainmenuFont                = love.graphics.newFont(
    "fonts/SourceSansPro-Regular.otf", 24, "normal", dpiscale
)
t.titleFont                   = love.graphics.newFont(
    "fonts/SourceSansPro-Bold.otf", 18, "normal", dpiscale
)
t.font                        = love.graphics.newFont(
    "fonts/SourceSansPro-Regular.otf", 14, "normal", dpiscale
)
t.fontBold                    = love.graphics.newFont(
    "fonts/SourceSansPro-Bold.otf", 14, "normal", dpiscale
)
t.fontSmall                   = love.graphics.newFont(
    "fonts/SourceSansPro-Regular.otf", 12, "normal", dpiscale
)
t.consoleFont                 = love.graphics.newFont(
    "fonts/SourceCodePro-Light.otf", 12, "normal", dpiscale
)
t.chatFont                    = love.graphics.newFont(
    "fonts/SourceCodePro-Light.otf", 14, "normal", dpiscale
)
t.entityFont                  = love.graphics.newFont(
    "fonts/SourceSansPro-Regular.otf", 24, "normal", dpiscale
)
t.itemCountFont               = love.graphics.newFont(
    "fonts/SourceSansPro-Regular.otf", 12, "normal", dpiscale
)
