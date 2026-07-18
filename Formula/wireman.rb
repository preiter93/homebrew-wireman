class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.3.8"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.8/wireman-0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "8e7866ad05fe7445c31e279f012e14fcaa668da781842eae88f1a7bf473834d2"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.8/wireman-0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "a7601849f125e3f3a98e70c4fc45dbc61ecfe4452160f6b5eee2c99c70c3d53c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.3.8/wireman-0.3.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fcd9318d6f4209eab98e179bfa53d7c07e0013624b57455893716242b757749"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.3.8/wireman-0.3.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "481fed0ad0af4d7a328817bcd3de0c96fb29776361f79cd6e7440179e18cea12"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
