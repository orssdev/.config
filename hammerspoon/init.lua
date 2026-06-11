hs.hotkey.bind({"cmd"}, "1", function()
  hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"cmd"}, "2", function()
  hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind({"cmd", "shift"}, "v", function()
  hs.eventtap.keyStroke({"cmd"}, "space")
  hs.timer.doAfter(0.2, function()
    hs.eventtap.keyStroke({"cmd"}, "4")
  end)
end)
