class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.7"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.7/wireman-0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "ccf5f6c3fdbb60ea0e40ec0dd2ddb4d786bc4ad41c7d1ae12b9258793c52ec86"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.7/wireman-0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "3f6c535df4c62f8f0150cfea98925317c61757cb3eb4e5ac114a3a9cb4f8e904"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.7/wireman-0.3.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79cd8e352b73a5645158bab6dc19e6ec50103a57340cc19ffc6f1d229792f6d0"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.7/wireman-0.3.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a2003cfa95201f58ead90fe3f37c9524dc97bf6eac72d30cdeb67a282f2d207"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
