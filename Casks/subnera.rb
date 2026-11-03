cask "subnera" do
  version "1.0.15"
  sha256 "be8ed844225e00ac631a2df9ea17e625347682216c81c2a2124d88773bbf0cb2"

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
