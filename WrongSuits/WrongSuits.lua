--- STEAMODDED HEADER
--- MOD_NAME: Wrongsuits!
--- MOD_ID: Wrongsuits
--- MOD_AUTHOR: Sarah & Leah
--- MOD_DESCRIPTION: 
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

----------------------------------------------
------------MOD CODE -------------------------

local atlas_key = 'WS_atlas'
local atlas_path = 'WrongSuits_dark.png'
local atlas_path_hc = 'WrongSuits_light.png' 

local suits = {'hearts', 'clubs', 'diamonds', 'spades'}
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",}

local description = 'A texture pack for balatro! All the art was done by Sarah, Leah just kinda slapped it togeather' 

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false}, -- See end of file for notes
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false}, -- See end of file for notes
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = "WrongSuits!"
        },
        posStyle = 'deck'
    }
end
    

----------------------------------------------
------------MOD CODE END----------------------
