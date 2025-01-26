class TdTui < Formula
  desc "Simple task management TUI tool"
  homepage "https://github.com/voioo/td"
  version "0.2.56"
  
  on_macos do
    on_arm do
      url "https://github.com/voioo/td/releases/download/v0.2.56/td_darwin_arm64.tar.gz"
      sha256 "fbb2e2c0c7bdde1cc3bf2c136441b96f5e70c9da4e9c50a675bd128287ce5532"
    end
    on_intel do
      url "https://github.com/voioo/td/releases/download/v0.2.56/td_darwin_amd64.tar.gz"
      sha256 "64bf981ef1f5e7865bd6ebec0406aff12a025e08610e09a41d509d0e0bf55b6f"
    end
  end
  
  def install
    bin.install "td"
  end
  
  test do
    system "#{bin}/td", "--version"
  end
end
