class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.11"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.11/td_darwin_arm64.tar.gz"
      sha256 "99fd9c2d9cfbb1ab45b8cf24dcf8cf502ac82030dd9347600d46563bfcb0eca0"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.11/td_darwin_amd64.tar.gz"
      sha256 "2c26ab0df06b07a1749b5c9631e2860cc1095f73515ed550275171cbb18a1b1a"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
