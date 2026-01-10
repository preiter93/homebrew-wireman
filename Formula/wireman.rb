class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.14"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.14/wireman-0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "e21d102523aa5c62ea7498a21177ed77dd39fd59ecfd8e78f6d67759415c48cd"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.14/wireman-0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "911641cdf0bdcf677a6adde80e4723418604011b809600bca9b6285a2c9cc780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.14/wireman-0.2.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5726a7aa56682ba0c43355f82dde1f2156dc24a467c8a1d521cd3f1adb0ff3d"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.14/wireman-0.2.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc9766f16b9bbd43cd3f192370b1671cb07ceeed2d13127b4938c87a086571a7"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
