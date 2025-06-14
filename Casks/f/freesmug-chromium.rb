cask "freesmug-chromium" do
  version "85.0.4183.102"
  sha256 "68ab1ee8be6fbab0a1290a24c36fd573ccf3340f6c14bbcdf88b387bba95b9b2"

  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg",
      verified: "sourceforge.net/osxportableapps/"
  name "Chromium"
  desc "Google Chromium built to solve Chrome incompatibility issue"
  homepage "https://www.freesmug.org/chromium"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-16", because: :discontinued

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
  ]

  app "Chromium.app"
end
