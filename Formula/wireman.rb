class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.2.2"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.2/wireman-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "f6e2833baa3e3d1110bff045fd2c832dbd0c6f17809b98205107174f56d6e8b5"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.2/wireman-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "f5ebcaf926ec57802c00edcdbf0d28f618b7afe52901000d7bb12c6e1b3b08c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.2.2/wireman-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cfdc802f1aa9c5341cf6c28f43b080bcf02e5d5e4416438b677cef573599412"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.2.2/wireman-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ae211e901b6eb098b3cc3634b44a58ebae118e13aee9f2c6a89e3df306b2d27"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
