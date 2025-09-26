class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.3"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.3/td_darwin_arm64.tar.gz"
      sha256 "f83b0ebdaa5b2efc8ae3a9b1eb43cc595b5d7dacdd23543370992a4a84322b79"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.3/td_darwin_amd64.tar.gz"
      sha256 "ef4bf5ee2bf8b40013299147161120946762330e9693d4fd8d4835bfe8c3c5fe"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
