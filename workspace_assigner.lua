local winName = get_window_name();
local appName = get_application_name(); 

-- either use the window or app name to act
-- debugging: ( shows window name / app name when an app/window is opened )
debug_print(winName .. " (App name: " .. appName .. ")");

-- examples:

if appName == "Firefox" 
    or ( winName == "Thunar"
    or string.match(winName, " - File Manager") ) then

    -- Firefox / Thunar/Filemanager opens in the First workspace
    set_window_workspace(1);

elseif winName == "Terminal" then
    -- Terminal to workspace number 5:
    set_window_workspace(5);
elseif winName == "Visual Studio Code" then
    -- Visual Studio Code to workspace number 4
    set_window_workspace(4);
elseif string.match(winName, "Slack") 
    or string.match(winName, "Microsoft Teams") 
    or winName == "Checking your credentials..." then
    -- Windows that contain "Slack" or "Microsoft Teams" ( or when Teams is authenticating ) send to workspace number 3
    set_window_workspace(3);
else
    if string.match(winName, "- Sublime Text (UNREGISTERED)") 
        or winName == "Postman"
        or winName == "KCachegrind"
        or winName == "Poedit"
        or winName == "Mozilla Thunderbird"
    then
        -- Sublime / Postman / KCachegrind / Poedit / Mozilla Thunderbird to workspace 2
        set_window_workspace(2);
    end
end



