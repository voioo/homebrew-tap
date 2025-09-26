class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.6"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.6/td_darwin_arm64.tar.gz"
      sha256 "970137f49b99df235548435594a612387c35e9d60d2fcc3b0d82d851be431a5e"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.6/td_darwin_amd64.tar.gz"
      sha256 "e06b5cd1a143ae7d6b3ee0da7aeea8a94ffa9f9dc694d7c359ae0d534556f7fa"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
