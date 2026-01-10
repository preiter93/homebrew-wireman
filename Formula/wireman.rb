class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.13"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.13/wireman-0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "0354f01d72b39603bb03298b25d87adc17cff60a00b3558cfbef9e836913be62"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.13/wireman-0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "60a8ddb87c353eb5ac8d4444ca5a14f3b51a5bd4aa7ac4c8ed2ebc1539e388d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.13/wireman-0.2.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b245f826f16050ce32272fea42b16d438b178f0b05b8fd78fef10a8dba64d8ea"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.13/wireman-0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4a986240cc4c37fd7a128064da6df76e64e086a29acc086d29fb847d6fd214d"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
