cask "pasteshelf" do
  version "1.0.7"
  sha256 "4b6835bfacba7a50a64855821038e37d773a09958936a56e7d545c2128b8c63c"

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
