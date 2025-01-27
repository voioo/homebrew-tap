class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.3.0"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.3.0/td_darwin_arm64.tar.gz"
      sha256 "3c37229be941a75235a72a8477c2f75f8314c721a2a69f389f857213ec46c47a"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.3.0/td_darwin_amd64.tar.gz"
      sha256 "8fd7fc821949a4ddb197923d595683b5133f5a426baa212e2886402e1265042e"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
