class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.49"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.49/td_darwin_arm64.tar.gz"
      sha256 "020c1e2a8f52d58a97b2d31b391d75a0ae1ffc7877f4bd05fb2b1beb09d0d0e4"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.49/td_darwin_amd64.tar.gz"
      sha256 "27a0c3a95274a9af7604f1765835f73a2def4e623d64a2d97afee6c70f014d45"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
