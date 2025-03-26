class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.7"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.7/wireman-0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "dd5cf31785a3ad4a34254d7089af6c1d1af730acfb5598130289637b435a5e4d"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.7/wireman-0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "25332ea392e4d3928e0e1cf6fac40827dde658a7f5368f7ea3f3fad52bc32ace"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.7/wireman-0.2.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91222499a44df249c824f1034428412f5265b32f540bec453f7f40d67952d6c7"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.7/wireman-0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ac7d901fa88713c87525ec498ef3c9747fb25a96c27b21bad140cbbe1c9bb37"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
