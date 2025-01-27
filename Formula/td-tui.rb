class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.60"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.60/td_darwin_arm64.tar.gz"
      sha256 "9152fd41d2ae20017c6132dc6f0b39b3569d55b886e8baa67d0d95136b86acad"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.60/td_darwin_amd64.tar.gz"
      sha256 "3ca614d8b1d31388b4d494f9ad47c63c7aff25eead751b225d91928de6980546"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
