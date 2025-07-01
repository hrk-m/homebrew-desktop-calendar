cask "desktop-calendar" do
  version "1.0.0"
  sha256 "419a30c5a9c3d3f425a64d82e071da356c52a3a9f27970ae9a201b8ab1338500"

  url "https://github.com/your-username/desktop-calendar/releases/download/v#{version}/Desktop.Calendar-#{version}-arm64.dmg"
  name "Desktop Calendar"
  desc "Desktop calendar application for macOS with background operation"
  homepage "https://github.com/your-username/desktop-calendar"

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