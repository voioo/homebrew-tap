class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.3.2"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.3.2/td_darwin_arm64.tar.gz"
      sha256 "4ec6bcdb30c2abfe159c1425e170f674ade1ac1e16f2728d2b4f4e1f72133fa0"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.3.2/td_darwin_amd64.tar.gz"
      sha256 "c2d34122cb7df831879a2e2f01b7cc72629b3c24246d065bdd5886423e2ae627"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
