class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.3.1"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.3.1/td_darwin_arm64.tar.gz"
      sha256 "f682cf4fc5160e511196832f480732601569313ec2d1143aa872a4e1a32e5fc8"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.3.1/td_darwin_amd64.tar.gz"
      sha256 "0bd4056b9c3e2803905d0aae5356226c10d088bf44f13a91cb4a7db8ee63d5c1"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
