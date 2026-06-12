-- Requires macOS ctrl+1 enabled: System Settings → Keyboard → Shortcuts → Mission Control → "Switch to Desktop 1"
hs.hotkey.bind({"cmd", "alt"}, "1", function()
  hs.eventtap.keyStroke({"ctrl"}, "1")
end)

hs.hotkey.bind({"cmd", "alt"}, "2", function()
  hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"cmd", "alt"}, "3", function()
  hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind({"cmd", "shift"}, "v", function()
  hs.eventtap.keyStroke({"cmd"}, "space")
  hs.timer.doAfter(0.2, function()
    hs.eventtap.keyStroke({"cmd"}, "4")
  end)
end)

hs.hotkey.bind({"cmd", "shift"}, "space", function()
  hs.eventtap.keyStroke({"cmd"}, "space")
  hs.timer.doAfter(0.2, function()
    hs.eventtap.keyStroke({"cmd"}, "1")
  end)
end)
