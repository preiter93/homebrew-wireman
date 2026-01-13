class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.5"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.5/wireman-0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "7814244e57150c8bf290cab56094b056844e1c951615dab3ff48266ff2107b2c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.5/wireman-0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "47c59fdfc67e076306e06747133b81f753a48e7bc0bdb834a41294b8d67718d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.5/wireman-0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c75c9b743175dd255c6baa2874245d342775fbdee8396ea567783db452337d1"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.5/wireman-0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0bb5c2e7164febbf9cd7d079ecd9aaac3d60fc8c45167687a8bf00885990de1"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
