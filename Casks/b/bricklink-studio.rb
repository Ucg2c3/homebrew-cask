cask "bricklink-studio" do
  version "2.25.5_1"
  sha256 "a1f1e49786afae5e8a6df62029dbb6416922b80368399088729cfb130ccbd1c9"

  url "https://studio.download.bricklink.info/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg",
      verified: "studio.download.bricklink.info/"
  name "Studio"
  desc "Build, render, and create LEGO instructions"
  homepage "https://www.bricklink.com/v3/studio/download.page"

  livecheck do
    url :homepage
    regex(/"strVersion"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  pkg "Studio+#{version.major}.0.pkg"

  uninstall pkgutil: "com.bricklink.pkg.Studio#{version.major}.0"

  zap trash: [
    "~/Library/Application Support/unity.BrickLink.Studio",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Studio",
    "~/Library/Preferences/unity.BrickLink.Patcher.plist",
    "~/Library/Preferences/unity.BrickLink.Studio.plist",
    "~/Library/Saved Application State/unity.BrickLink.Patcher.savedState",
    "~/Library/Saved Application State/unity.BrickLink.Studio.savedState",
  ]
end
