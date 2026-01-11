class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.4"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.4/wireman-0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "34cbf03f1820d16de05e802ac61048e7ccf3d7c01910e633be88ba9165ea3141"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.4/wireman-0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "e0e5f0d5a6d309576499ddc67210061190b7fd26b133f34b26c0e74763473b5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.4/wireman-0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47c6caaa93cc1ec33fc433cbea3cbc230a1de95038b30c872f6e6e00e3669403"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.4/wireman-0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0135f18feaf0daf7e1d5c322e4428a331fb2b362f080c284c61b412162536fe0"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
