class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.2"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "e645a23cc40a21c83fd38d8afe99634baf680b2ce90b68a52d3ca850dc716c1e"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "eb578be60d42a9db5eb48427dadbbcde1619a148657b7b84bc43d49debf26cee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a8374f7657508bb24e4f19c9614f0701d3530821b4e8047faa1d6cc1560afa2"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab8c1479a1ee0b9450b7e098e373600ad50f2c85337892808a322a8f3e3e8f4b"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
