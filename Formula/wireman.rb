class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.12"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.12/wireman-0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "f4099a0cdaac592e5ff3d37c33c0edc1b55ba0b96156f57064307a1309c2ab87"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.12/wireman-0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "65608d9179d19c13987752894a4c157d683ebff754184db2ebc80211efd04d51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.12/wireman-0.2.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c92e64b7b29719c2540af4139fe687a3557c4e75f0e4e2b0bbd5247de8ae78bb"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.12/wireman-0.2.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33a37255ea0ddad0e711d9116350983c8d70f35848043c3b99a976a83d5ac0f4"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
