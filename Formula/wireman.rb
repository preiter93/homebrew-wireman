class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.2"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "8c4cd5e7ede689debb7818c70e3a35f9393109e2917ab516826f4806dd706ba4"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "5bf68f58fb7746fd4d5d1b2b628795a6628170429dabb55c5ef4542a49e967ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "227514af2459615b673dda713443a5c72c5664beda6a1706dc6a8ed8ac9692eb"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.2/wireman-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1aec0169de709cd2e1c9e30018a7aae32baaf6ff5a21dc5b5804eb4c177b51a"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
