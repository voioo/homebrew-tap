class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.5"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.5/td_darwin_arm64.tar.gz"
      sha256 "f9f78a2fd82b446e4cc99fedd897acd171e16f4c46fda64c24f20c39e34fbffb"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.5/td_darwin_amd64.tar.gz"
      sha256 "a86610e243354f07701f41e94be4dc676a0a94c384757bde2fd1bd2f923c3d54"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
