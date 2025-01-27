class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.57"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.57/td_darwin_arm64.tar.gz"
      sha256 "084015c159d746b9075e1041a1bf5e22d1ccd27f04a7578c0e777e73518efcb7"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.57/td_darwin_amd64.tar.gz"
      sha256 "371a4caee94b0403eb8325bc2d444d094b7fd7e9d681f0ae5c05570d3f7369c1"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
