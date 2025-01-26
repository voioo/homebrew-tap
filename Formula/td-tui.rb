class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.51"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.51/td_darwin_arm64.tar.gz"
      sha256 "85b99bc41dfa6346d365c88cc47dfe0ef63ed42d6499ea36b858faf9ef8ba25d"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.51/td_darwin_amd64.tar.gz"
      sha256 "0de61c638ecf52c679be211f63d10ebb527d0024fc15e1773cb6fdd030392394"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
