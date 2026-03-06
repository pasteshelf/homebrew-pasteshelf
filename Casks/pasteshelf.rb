cask "pasteshelf" do
  version "0.1.0"
  sha256 "4113b67ce36243daac3416233cde92f89a6f4731ec2bbd74b478dfbdfee6e488"

  url "https://github.com/pasteshelf/PasteShelf/releases/download/v#{version}/PasteShelf-#{version}.dmg"
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
