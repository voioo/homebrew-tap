class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.4"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.4/td_darwin_arm64.tar.gz"
      sha256 "649c08d25e7525e4a287fcd37c09d2414e902cc9ba5fd6a1afde6f87ea5bc37f"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.4/td_darwin_amd64.tar.gz"
      sha256 "8b8383a4e997b4f5176103a1604e7e90c91ef91be47d8776048bc39fe77182e0"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
