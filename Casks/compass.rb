cask "compass" do
  version "20261121.1535"
  sha256 "fefd160c33bc9b19ab9b8a70456d9e2da524be2809e2666f77bdbd70e1218be9"

  url "https://github.com/Compass-Browser/Compass/releases/download/v#{version}/Compass-#{version}.dmg"
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
