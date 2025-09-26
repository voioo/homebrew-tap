class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.9"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.9/td_darwin_arm64.tar.gz"
      sha256 "0ec931f07e9e687b993bd8bab1004f9ec9d5f28b22e9a299c7ac5fab4d208861"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.9/td_darwin_amd64.tar.gz"
      sha256 "14e4c94993509d7a201cb421c35e8f27bb4a4039c47193c1eaba49c2fe03e825"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
