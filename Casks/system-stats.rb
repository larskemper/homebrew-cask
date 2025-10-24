cask "system-stats" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "d168b3bd18dfe18619324958f3b8a18ce457ae7c7ed55ec0af1201763c708acc",
         intel: "93d5b4b0c46ec0d20bafc50db95c7b0b2035e0d22c2af2aaa9b075945d325f8e"

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