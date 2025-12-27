class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.11"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.11/wireman-0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "5f8422aeb18a95fff62fca93b1385dc3cf50df0c56e4be7856a93bf140a836df"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.11/wireman-0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "b54b45560c0ab79b5b833bdc1e23313820cb5478d747df32ad9d208036033a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.11/wireman-0.2.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "362e2962f6c1c42eb215460551d80002e2c20087fedc851a32adfb678cdf76d4"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.11/wireman-0.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19311880259677925bd453343f3653979f13730377bb4ed921444b4b52bfe0ca"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
