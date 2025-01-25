class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.47"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.47/td_darwin_arm64.tar.gz"
      sha256 "55d8aa7cad0e8e94c52661ec02ee983ed5176217f09ad7e843d22f6749729644"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.47/td_darwin_amd64.tar.gz"
      sha256 "35950d7e118f5cb5448feca38fad755f58fb2b98dbd3f9b54bc75e44847d7ef5"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
