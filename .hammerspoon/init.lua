hs.hotkey.bind({"ctrl"}, "space", function()
    local app = hs.application.get("Finder")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"File", "New Finder Window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Finder")
    end
end)