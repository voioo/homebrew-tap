class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.53"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.53/td_darwin_arm64.tar.gz"
      sha256 "07c0c888be54b95647adfbd2149d546ba9650affa9d074557c0a611fc27856f5"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.53/td_darwin_amd64.tar.gz"
      sha256 "cee6b020d3cac4ccb007d4a1f02632f04c32c5106e35538d2a09d1ed7df86008"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
