class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.3"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "2aead5680e5429083ec17ada1ece99a38ee5f8f8c8ea3111bb3b1e868c39343b"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "127ba73dbaed76eeade0064c8af86392a40a737d31ca9736402fbbc896eb19e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "966faaf9502218f1e5a7c67125d5bf00f8583aefbd3868b39ab21ea883ab0c78"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a8f5b895c5134c895123495b9dbaa34f93b88214b0bd9063c2c6192c4cceb05"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
