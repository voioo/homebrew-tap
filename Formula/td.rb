class Td < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.45"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.45/td_darwin_arm64.tar.gz"
      sha256 "762efcd242bcd85eac138bd754e9e9102d8b9ef4fcfcaeca0d816743109d9d5a"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.45/td_darwin_amd64.tar.gz"
      sha256 "102935e7a4a41d7ff5cf0cab7a62cd8c1d9958d437e46ba1f7e6460242537d58"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
