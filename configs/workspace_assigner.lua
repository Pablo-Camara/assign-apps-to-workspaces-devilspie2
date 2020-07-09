local winName = get_window_name();
local appName = get_application_name();

debug_print(winName .. " (App name: " .. appName .. ")");
if appName == "Firefox" or ( winName == "Thunar" or string.match(winName, " - File Manager") ) then
    set_window_workspace(1);
    change_workspace(1);
    focus_window();
elseif winName == "Terminal" then
    set_window_workspace(5);
    change_workspace(5);
    focus_window();
elseif winName == "Visual Studio Code" then
        set_window_workspace(4);
        change_workspace(4);
        focus_window();
elseif string.match(winName, "Slack") 
        or string.match(winName, "Microsoft Teams") 
        or winName == "Checking your credentials..." 
        or winName == "Mozilla Thunderbird" then
    set_window_workspace(3);
    change_workspace(3);
    focus_window();
else
    if string.match(winName, "- Sublime Text (UNREGISTERED)") 
        or winName == "Postman"
        or winName == "KCachegrind"
        or winName == "Poedit"
    then
        set_window_workspace(2);
        change_workspace(2);
        focus_window();
    end
end



