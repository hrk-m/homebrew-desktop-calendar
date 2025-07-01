cask "desktop-calendar" do
  version "1.0.1"
  sha256 "e7e4605a4d7400b8554ec18541609f6af813f7ca1ffaae3be6a40a4fa6f93f4d"

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