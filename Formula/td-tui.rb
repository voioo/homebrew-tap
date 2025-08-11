class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.2"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.2/td_darwin_arm64.tar.gz"
      sha256 "1ef141f9176a69ceff0ca633cff2714d2614c9f733b7b50e654db0f9889eb0e1"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.2/td_darwin_amd64.tar.gz"
      sha256 "fb58eb2a63098f97a87d011921669c362cc2e963763eed9d9874969990bb3d5c"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
