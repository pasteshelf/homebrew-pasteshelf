cask "pasteshelf" do
  version "1.0.20"
  sha256 "ce760f3bc6d02fb506838545aadbf45bdd1d0eaa935177094c1fccc038689924"

  url "https://github.com/pasteshelf/PasteShelf/releases/download/v#{version}/PasteShelf.dmg"
  name "PasteShelf"
  desc "Privacy-first clipboard manager for macOS"
  homepage "https://github.com/pasteshelf/PasteShelf"

  depends_on macos: ">= :sonoma"

  app "PasteShelf.app"

  zap trash: [
    "~/Library/Application Support/PasteShelf",
    "~/Library/Caches/com.pasteshelf.PasteShelf",
    "~/Library/Preferences/com.pasteshelf.PasteShelf.plist",
  ]
end
