class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.10"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.10/td_darwin_arm64.tar.gz"
      sha256 "4a242a0c0c503df7ef6519f6263b88c7225858ebbc1164468ca616d6b8c406ad"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.10/td_darwin_amd64.tar.gz"
      sha256 "4edf8029ad5d130442c3b94946ea914b2c28d9bfd3717f96d67c63c8a4233776"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
