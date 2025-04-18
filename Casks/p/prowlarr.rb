cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.33.3.5008"
  sha256 arm:   "8f2b62112df41e0c5c504c6867d0bc6ca57794f4a931433aff01d348f30834c1",
         intel: "885112a7f1b39a1fa8c53766ab05ce0f6b440e50a625bc90aa0c4e88846327a3"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url "https://prowlarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
