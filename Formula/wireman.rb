class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.3"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "3f4f4bfdd4db3552ee4fd94f21292a3544525648c269309206c9825ad0320204"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "2279db4abe096fc6636e63f4afd0c4251469113f34203f9d0490612ddd57c0d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8cd2249249629adfce84670a185ec587cd609758b414ca68fa7762a61bc275b"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.3/wireman-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49fa95f0c727fac53be0d28565bce5850b1628c863581101702d58acaed8bd4c"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
