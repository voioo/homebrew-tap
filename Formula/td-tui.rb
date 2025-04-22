class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.4.1"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.4.1/td_darwin_arm64.tar.gz"
      sha256 "3782515868510017b3cbb8427fd15f9ebbe039bf991d4ed16355d91e20a2900e"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.4.1/td_darwin_amd64.tar.gz"
      sha256 "9feaf6dde02bab2e6a18716bb29a9ae2dd35e9ccb22de9172d7e57d0265cd7d1"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
