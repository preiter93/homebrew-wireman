class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.9"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.9/wireman-0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "3a5885ec346de37ba79fb090abaaa80c010d90df13d3d878afe946e9cb9e0b8c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.9/wireman-0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "c968beb7b23e044c3ff8d5ff986de52ab75ef7fb91a7b5ad719a684ab4ec8683"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.9/wireman-0.2.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0809e6c6ea8e07f96598de1ce7493ced50c3944f7002ff26e02adc4dbd6405b4"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.9/wireman-0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd715458782e1deb446a0ed8d70af10dec8c0c7bdbd8a37c923e4735ed506d3d"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
