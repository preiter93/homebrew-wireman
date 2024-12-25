class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.3"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "2b50db705097bc426f3fb8a82890397da959b8c570b752916a2935d8e8be3caa"
    else
      rl "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "1b66feab9172573deb0d63df38739c3b8f9d799b2b617ebd18392eb7afefe829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12d2792ca0ca18efea45e6153c2ebdf4e41c2d5b4f4c7df7bc775d51e5ce6350"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e31d07459f6ee74fd9d42d8bad44766b1846db21626fd36f65c1140c34dd6532"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
