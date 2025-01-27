class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.58"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.58/td_darwin_arm64.tar.gz"
      sha256 "b5cc019f2f3f61bd7676e984a6a46aac65ca24fff7cc04d759e5013fb7a67083"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.58/td_darwin_amd64.tar.gz"
      sha256 "bd6de5bc0f1960801a8fc5379f9f9ec6cd90534451a42452d01ee6d603ef1b0b"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
