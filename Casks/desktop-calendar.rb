cask "desktop-calendar" do
  version "1.0.0"
  sha256 "923515c4c83bf838bfcdd804e3398ee2d1fe936802239aafa7a09b2da9ce3f00"

  url "https://github.com/hrk-m/desktop-calendar/releases/download/v#{version}/Desktop.Calendar-#{version}-arm64.dmg"
  name "Desktop Calendar"
  desc "Desktop calendar application for macOS with background operation"
  homepage "https://github.com/hrk-m/desktop-calendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Desktop Calendar.app"

  zap trash: [
    "~/Library/Application Support/Desktop Calendar",
    "~/Library/Preferences/com.desktop-calendar.app.plist",
    "~/Library/Saved Application State/com.desktop-calendar.app.savedState",
    "~/Library/Logs/Desktop Calendar"
  ]
end 