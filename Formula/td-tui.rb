class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.0"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.0/td_darwin_arm64.tar.gz"
      sha256 "cc60590912e5eb73265fbb6ffc43e99ec90c437a1f8489ea08fcab62cae03fa8"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.0/td_darwin_amd64.tar.gz"
      sha256 "dfeb1f71ede35c5678bfc6c9209bf1e6079702951099247d423a865cde4039f0"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
