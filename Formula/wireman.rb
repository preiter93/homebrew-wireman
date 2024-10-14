class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.1.4"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "72c4889b6dd24f31a9b97d9c64b91a01a9051405830ec4f467e179574aba8538"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "0e367c9f7ebc38b5ca3330f6fdfaa2831c5e50504cde7cb985e4a471d1a19069"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9bbae51a4f896698f28ec6d85a3fe3e8064068619d88389776df990781c5de5"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d56ab01db93536699acb7d3433b1e34b13923c2b70eeb4ec00bfab5c198df6ec"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
