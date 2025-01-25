class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.48"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.48/td_darwin_arm64.tar.gz"
      sha256 "3d7114e6df3ef533730fdf54f2ff963b7f6d479f6f382693183dcd948622c3e9"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.48/td_darwin_amd64.tar.gz"
      sha256 "22dcd9b21d9fcd6c4d11cb828232782cc698aad63220b1f0ba6e506c19979d36"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
