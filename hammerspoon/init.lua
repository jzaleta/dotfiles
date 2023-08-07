-- Toggle opening and closing kitty and finder with a hotkey
-- Inspo from: https://github.com/kovidgoyal/kitty/issues/45#issuecomment-568920629

local function toggleApp(name, menuItem)
    local app = hs.application.get(name)
    if app then
        if not app:mainWindow() then
            app:selectMenuItem(menuItem)
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus(name)
    end
end

hs.hotkey.bind({"ctrl"}, "space", function()
    toggleApp("kitty", {"kitty", "New OS window"})
end)

hs.hotkey.bind({"ctrl"}, "f", function()
    toggleApp("Finder", {"File", "New Finder Window"})
end)
