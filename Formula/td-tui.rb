class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.50"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.50/td_darwin_arm64.tar.gz"
      sha256 "3672c52a41b7978700806f3add8a0dff2ef9fd60fc25109b7520323a66cde92e"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.50/td_darwin_amd64.tar.gz"
      sha256 "d8790691a117567ebc66131c04e86dc78c7b7892953d7e313509db724b493fc8"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
