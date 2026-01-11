class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.1"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.1/wireman-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4817eba59e7707b7ffe490eed9d403c72b0c8056f787cc78c5ed35e6fa7a2670"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.1/wireman-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "10f1b8d12fbe93a8bb1cd0c2cba12d89dc79bfbd2d73aad06f7ff143533d6cc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.1/wireman-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b19cd00e5cf8725466cd010565b2dc227737009b351d5795235a5c58eec817f6"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.1/wireman-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddd379f4ac1c47caf0cda55c2700ee93de9aa38289c02d5ef8c0d97d9d05a2a1"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
