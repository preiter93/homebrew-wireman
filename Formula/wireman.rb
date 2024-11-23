class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.1"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "4afeb7c0b2c707c8eadda22c0731f123a680c589e2b972363e2fa9a793b05bf4"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1b20e04da231e09e2940f86c7fff6c2fd9bbf5be2d3a84d66d5285fcbfbc9ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "093fb6dcd1eb0077159870d05b01a213bebf5e71b3954352c0e407ecc464f9ee"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "100cfb06c5ac7cbea40083366615412670978128991fea0f1221f5b60fa6ffd7"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
