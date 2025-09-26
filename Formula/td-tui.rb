class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.7"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.7/td_darwin_arm64.tar.gz"
      sha256 "67003ec4dd50be440b497d3d978d1129c35597ff2e09a656f36290102bac4d75"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.7/td_darwin_amd64.tar.gz"
      sha256 "db34c7fe31a821196d3f2ac4916dfcf3d4122e044567ce53d2c292a0c3206096"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
