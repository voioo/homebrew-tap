class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.62"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.62/td_darwin_arm64.tar.gz"
      sha256 "6e23d6a1eebf7bec75e70de3f2e1c7544424b6a2b4eaaa116fce9fbbd139b5f0"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.62/td_darwin_amd64.tar.gz"
      sha256 "904a7adea0256a4022a6049649a5e825e73197836f000a35197ed79b8fef97cd"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
