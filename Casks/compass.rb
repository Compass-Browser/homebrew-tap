cask "compass" do
  version "20261115.1657"
  sha256 "4dfd830584897dc049b8b12156c6dca7bd22391307c3b94b6f9f05ebd843167e"

  url "https://github.com/Compass-Browser/Compass/releases/download/v#{version}/Compass-#{version}.dmg",
      verified: "github.com/Compass-Browser/Compass/"
  name "Compass"
  name "Compass Browser"
  desc "Open-source Arc alternative built on Chromium"
  homepage "https://compassbrowser.org/"

  livecheck do
    url "https://updates.compassbrowser.org/canary.json"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Compass.app"

  zap trash: [
    "~/Library/Application Support/Compass",
    "~/Library/Caches/Compass",
    "~/Library/Caches/it.cipi1965.compass",
    "~/Library/HTTPStorages/it.cipi1965.compass",
    "~/Library/Preferences/it.cipi1965.compass.plist",
    "~/Library/Saved Application State/it.cipi1965.compass.savedState",
  ]
end
