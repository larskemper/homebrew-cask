cask "system-stats" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "82ac20a655856cc1501853c5a7de7d9435ef2a4085ef94c227985ba7919cb847",
         intel: "f9bc57d9bf8a096ee81e1fb3310ea85409093e3eac0f073829e977f58b75fecd"

  url "https://github.com/larskemper/macos-menu-bar-stats/releases/download/v#{version}/system-stats-#{arch}.dmg"
  name "System Stats"
  desc "Simple menu bar app for system monitoring"
  homepage "https://github.com/larskemper/macos-menu-bar-stats"

  depends_on macos: ">= :ventura"

  app "System Stats.app"

  zap trash: [
    "~/Library/Preferences/dev.larskemper.system-stats.plist",
    "~/Library/Application Support/System Stats",
    "~/Library/Logs/System Stats",
    "~/Library/Saved Application State/dev.larskemper.system-stats.savedState",
  ]
end