class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.6"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.6/wireman-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "1cde614058116f9b359144cdad5ea5a552a249e4db3bd78a2e3f44522a19da6c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.6/wireman-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "967568f3bbe073a2a2645edb03d22ef97a5ef832296b663ae2838dbfd891de50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.6/wireman-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39024be85026768fa2516ebcb0d1346516c69ceab2c7717b48752b16d3573390"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.6/wireman-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28b7656c87ee17b3a3e81cc4def380b8ef1d710f117132187f928a8731db132c"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
