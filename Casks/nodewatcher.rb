cask "nodewatcher" do
  version "0.1.0"
  sha256 "placeholder"

  url "https://github.com/jskoiz/node-watcher/releases/download/v#{version}/NodeWatcher-#{version}-mac.zip"
  name "NodeWatcher"
  desc "macOS menu bar app for monitoring local dev port usage"
  homepage "https://github.com/jskoiz/node-watcher"

  depends_on macos: ">= :sonoma"

  app "NodeWatcher.app"

  zap trash: [
    "~/Library/Preferences/dev.nodewatcher.app.plist",
  ]
end
