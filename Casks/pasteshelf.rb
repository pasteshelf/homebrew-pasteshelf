cask "pasteshelf" do
  version "1.0.17"
  sha256 "f1192d3d800a78bb8952fc965b5ff4c47738fb842a31cba6994a04584631fdac"

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
