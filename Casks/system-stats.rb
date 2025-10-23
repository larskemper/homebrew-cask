cask "system-stats" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "6b6b83b92bac7efbfdcbd84635687970dd44e10a93573931a9cdd8696491f34e",
         intel: "8e488330c61ca2cf48781699453079291e8a3e3d1c74a4dd8fcf9852ab3bdadb"

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