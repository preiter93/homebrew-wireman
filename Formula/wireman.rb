class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.1"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "97744b062902ac9e0e2e9c08c778b0f07312309fd73375b3ce77094ea4c1b33c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "303327c4d5d487f3f78de787f6b4321bd53609806f9e67d4b4860e9cb5c0a175"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca36d085f197154d7f40126cb5bc8101f22ff9a88eef8695a2d854bcda8582fa"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.1/wireman-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4880a8dbb361c08a805ff0e0a11ccb2368a405f6bba349f2e1d92a30b2685d8"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
