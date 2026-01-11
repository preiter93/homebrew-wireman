class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.0"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.0/wireman-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "72d995ef11a8cedd6b71c91b4ccca8c3ec8bcf0d15a5e6f8ec8dd01a61394621"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.0/wireman-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3b36cff857f7777490948729a08d957d0ec6877cab5a49cac082dee3567f93f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.0/wireman-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9531dd59b6e9317512f8a74dc4595f543240aebe4bea9ec8e1266b1f3ba7ab8f"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.0/wireman-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a308a01f1861bc2c028c74efc7b4edb8ff4694d6967f07ca05eaed3396e33167"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
