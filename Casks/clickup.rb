cask "clickup" do
  version "2.0.19"
  sha256 "974cd39d03605f35f9300e86339961093adc631bf85774ccbe9924965dd5eacf"

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  appcast "https://github.com/clickup/clickup-release/releases.atom"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  app "ClickUp.app"
end
