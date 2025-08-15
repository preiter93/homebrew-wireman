class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.8"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.8/wireman-0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "d967feb4d56e25a27f04c68775bbaaf233c058af76ff6148667202082b5d8841"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.8/wireman-0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "200f52cc1d4c2de361ec17bcef990a007bf2a0e6880cc5708136efde4e796f41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.8/wireman-0.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f32acc2a0b8feb79d3fc6630df71d677a038a45827ef246586d83a621719d27"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.8/wireman-0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f90e864a7e78e2e42245663ee32f2db0f9951f191bac1993416f2b5aad57538"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
