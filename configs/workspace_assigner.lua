local winName = get_window_name();
local appName = get_application_name();
local classInstanceName = get_class_instance_name();

if appName == "Firefox" or ( winName == "Thunar" or string.match(winName, " - File Manager") ) then
    set_window_workspace(1);
   
elseif winName == "Terminal" or string.match(winName, "Terminal") or string.match(appName, "Terminal") then
    set_window_workspace(5);
   
elseif winName == "Visual Studio Code" or string.match(winName, "Visual Studio Code") then
        set_window_workspace(4);
       
elseif string.match(winName, "Slack") 
        or string.match(winName, "Microsoft Teams") 
        or winName == "Checking your credentials..." 
        or winName == "Mozilla Thunderbird" then
    set_window_workspace(3);

else
    if string.match(winName, "- Sublime Text (UNREGISTERED)") 
        or winName == "Postman"
        or winName == "KCachegrind"
        or winName == "Poedit"

        --Spotify winName and appName is the same, so we use the classInstanceName:
        or string.match(classInstanceName, "spotify") 
    then
        set_window_workspace(2);
    end
end



if appName == "Devilspie2" or ( winName == "Devilspie2" or string.match(winName,"Devilspie2") ) then
    set_window_workspace(5);
    focus_window();
    close_window()
end
