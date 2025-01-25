class Td < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "main"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/main/td_darwin_arm64.tar.gz"
      sha256 "1640849cb3d0fb0b5d0c3e6c39e5a2d86ad9b630a1a22306758450b3cd518f25"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/main/td_darwin_amd64.tar.gz"
      sha256 "abd439a930f4ffe802715e6da4e5e4e3d5799e597d34f19e7a201618d30451de"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
