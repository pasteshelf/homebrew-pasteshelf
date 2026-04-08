cask "pasteshelf" do
  version "1.0.5"
  sha256 "9f029654da13e6c75f3d1717c58ab194595d70807af300aed4aa2545f8ae49a0"

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
