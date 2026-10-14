cask "subnera" do
  version "1.0.13"
  sha256 "0a20a427b0f1473e370cda6d5b8a1cc6892374b496fa1efda68e8e54be186937"

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
