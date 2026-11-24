cask "compass" do
  version "20261124.1123"
  sha256 "9858ac81e2602dee39f8eec967547001f8eff6561f66a42244edbf117efd8545"

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
