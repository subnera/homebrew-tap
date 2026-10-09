cask "subnera" do
  version "1.0.12"
  sha256 "07702a855accb4693b515d74c9dc076346cc3d4ecd843910ad265dffb40923b0"

  url "https://downloads.subnera.com/releases/#{version}/subnera-#{version}.dmg"
  name "subnera"
  desc "Menu bar monitor for IOTA Train at Home miners"
  homepage "https://subnera.com"

  livecheck do
    url "https://downloads.subnera.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "subnera.app"

  zap trash: [
    "~/Library/Preferences/com.subnera.app.plist",
  ]
end
