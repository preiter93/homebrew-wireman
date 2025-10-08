class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.10"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.10/wireman-0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "57a3cd1d38b4822cba30222fec9b62fc51f097d7c732032367bf9e319c89e9b2"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.10/wireman-0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "924dfdc8cb331c82b9b71967e873dd8436bd1eb1637d78cf48d416f032ba7925"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.10/wireman-0.2.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62f30b9190e1e811de4ea1c07fe872dfed8ece64048327dbf2edb2b3205cce4a"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.10/wireman-0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13c08423575f4fd2bf85202d496ea320607deac801eee729d76ada6de210ebf2"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
