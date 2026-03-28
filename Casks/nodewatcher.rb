cask "nodewatcher" do
  version "0.2.7"
  sha256 "b6a2ba73f24f6752023f13142f2fc2e69247322eaf20ada16a4ebbe242c3e219"

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
