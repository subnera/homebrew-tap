cask "subnera" do
  version "1.0.14"
  sha256 "f0275aaa6bb246f85c7b8f7ab764bd617ed5a47a55645ba7c59949e4508fd20a"

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
