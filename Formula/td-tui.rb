class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.52"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.52/td_darwin_arm64.tar.gz"
      sha256 "fb80a147e5a74a121de41c5039f65faaf25490c663267af5b0eca330969f7684"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.52/td_darwin_amd64.tar.gz"
      sha256 "7887bb02ed0d7200631b762e68a8e639713a4385a60637cab353c1e5eddf13f9"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
