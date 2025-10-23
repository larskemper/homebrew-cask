cask "system-stats" do
  version "0.1.0"
  
  arch arm: "aarch64", intel: "x86_64"
  
  url "https://github.com/larskemper/macos-menu-bar-stats/releases/download/v#{version}/system-stats-#{arch}.dmg"
  sha256 arm:   "f9bc57d9bf8a096ee81e1fb3310ea85409093e3eac0f073829e977f58b75fecd",
         intel: "1e68934f3a6c4c549c52e7daf2670dd6132c13ce9b43a8d7f0561fe7bda58f40"
  
  name "System Stats"
  desc "Simple macOS menu bar app for system monitoring"
  homepage "https://github.com/larskemper/macos-menu-bar-stats"

  depends_on macos: ">= :catalina"

  app "System stats.app"

  zap trash: [
    "~/Library/Application Support/dev.larskemper.system-stats",
    "~/Library/Caches/dev.larskemper.system-stats",
    "~/Library/Preferences/dev.larskemper.system-stats.plist",
    "~/Library/Saved Application State/dev.larskemper.system-stats.savedState",
  ]
end

