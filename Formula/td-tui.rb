class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.8"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.8/td_darwin_arm64.tar.gz"
      sha256 "3181bbecbb12946df2686b4e3f482bfa10b8982dfb33ad25ba00b80d569ef62f"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.8/td_darwin_amd64.tar.gz"
      sha256 "e7e69cd2c4e20b109c37c18599eb1dcfadf25f0c1be08bf660f513436d3d84ac"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
