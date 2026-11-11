cask "subnera" do
  version "1.0.16"
  sha256 "7d40554d0f2980178d2b88640ffef28b9b5c4b04687098e9db54c40f5fcae728"

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
