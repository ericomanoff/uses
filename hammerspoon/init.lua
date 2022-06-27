
hs.hotkey.bind({"cmd", "alt", "ctrl" ,"shift"}, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "M", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")


hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 't', function() hs.application.launchOrFocus("iTerm") end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 'g', function() hs.application.launchOrFocus("Google Chrome") end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 'c', function() hs.application.launchOrFocus("WebStorm") end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 's', function() hs.application.launchOrFocus("Slack") end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 'o', function() hs.application.launchOrFocus("Obsidian") end)

-- function fuzzyObsidian(appName, eventType, appObject)
--       if (appName == "Obsidian") then
--           -- Bring all Finder windows forward when one gets activated
--           hs.alert.show("obsidian happening")
--       end
-- end

-- obsidianWatcher = hs.application.watcher.new(fuzzyObsidian)
-- obsidianWatcher:start()

-- fuzzyFindObsidian = hs.hotkey.new({"cmd", "alt", "ctrl", "shift"}, 'f', function()
--   hs.application.launchOrFocus("Firefox.app")
--   reloadFxFromRubyMine:disable() -- does not work without this, even though it should
--   hs.eventtap.keyStroke({"⌘"}, "r")
-- end)

-- hs.window.filter.new('RubyMine')
-- :subscribe(hs.window.filter.windowFocused,function() reloadFxFromRubyMine:enable() end)
-- :subscribe(hs.window.filter.windowUnfocused,function() reloadFxFromRubyMine:disable() end)
