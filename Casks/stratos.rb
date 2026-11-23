cask "stratos" do
  version "1.7.2"
  sha256 "7547b0f7e676e318bbe5b026fa1b47cc7d2f42e65fec441e25d4d65dc3dc6597"

  url "https://stratosapp.dev/download/Stratos-#{version}-universal.dmg"
  name "Stratos"
  desc "Native Swift macOS local dev stack for PHP 8.1-8.5, Laravel, WordPress & Node"
  homepage "https://stratosapp.dev/"

  livecheck do
    url "https://stratosapp.dev/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "Stratos.app"

  zap trash: [
    "~/Library/Application Support/Stratos",
    "~/Library/Logs/Stratos",
    "~/Library/Preferences/com.therssoftware.Stratos.plist",
  ]
end
