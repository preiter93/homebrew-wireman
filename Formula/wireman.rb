class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.5"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.5/wireman-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "f56e50465677c653e934eff85ec85eea8be01e6aaad62d89bed79ecb7c45ac3a"
    else
      rl "https://github.com/preiter93/wireman/releases/download/v0.2.5/wireman-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4d464b543ce03a17c765185e8a23abdaa77484e9ea03da14b35c8ea53b53ee4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.5/wireman-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5edd3170a81f99cfb189468602a3facb9b72beeb55fcac484922f136fcca048d"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.5/wireman-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69e1846c7b18e22f723f5a2d354d26ed16b077f8cff96bbc18ffdaf4a2877d53"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
