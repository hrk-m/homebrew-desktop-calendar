cask "desktop-calendar" do
  version "1.0.2"
  sha256 "c24e68beb45ff7f8125c8aa814ad69100c92ed8ec3e9c7cd9f3e6ffaadbee904"

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