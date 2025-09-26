class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.12"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.12/td_darwin_arm64.tar.gz"
      sha256 "d7c726762e80a4e37435116b761f73995bf4c620f94ffafb4342802cdaf45aa7"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.12/td_darwin_amd64.tar.gz"
      sha256 "b70f89e4e06d4ef1f280209b155e8220f68883bcc5a4a9c9e7bcdcefe1bc0e05"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
