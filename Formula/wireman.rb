class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.1.4"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "09a844bcb4850948dd2adb576114b41d4821b1db7cec391c5d0d293cf729dd17"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "7fdc492dcdaa2a5b4be8c76c5b1ffbb1c2af709e99a0a4454ecb1f69156f7e15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33849a89b53d0d34f14243719ca106581738975e0dddd0e663571e0a39aee09c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "712ee8272ca5aa4e11e9db16e4cdfde115b76e7fe36517d37e4ac4dcc0880ae1"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
