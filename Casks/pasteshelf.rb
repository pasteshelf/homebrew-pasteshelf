cask "pasteshelf" do
  version "1.0.9"
  sha256 "dc26b165370b322fca8ec46dc007632c9d0bb2d6593fd94f3f8a33714b384ffe"

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
