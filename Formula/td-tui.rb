class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.56"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.56/td_darwin_arm64.tar.gz"
      sha256 "c87772224c315fbf7b7f05746afde5ae39afe4a10a1ba13cb18ac74cd1be5cf8"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.56/td_darwin_amd64.tar.gz"
      sha256 "4b57bb95e7cdb3306ec2ff5629836f552f6ddf81ab48e858d5ec93c54a752f89"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
