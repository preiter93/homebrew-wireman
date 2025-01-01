class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.4"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.4/wireman-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "7e9400f6fb595bb314a987c39557c51c6cbeced775f9edf91e39d2e32b01c3c4"
    else
      rl "https://github.com/preiter93/wireman/releases/download/v0.2.4/wireman-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "b4d71c4886f1ba8b0fc902d38f146b84995b54f7fa32c8c1459014296dd0fa78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.4/wireman-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "847c04eb3b6d0caaa96bf93c78c60bef1c6cac4ff8814ec7ea0af903934ade04"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.4/wireman-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52f4765e2f4444d7004d8e80ada38ee4c2d624958a7df12eb5f0fcc3b7c253e2"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
