class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  version "0.1.4"
  license "MIT"
  head "https://github.com/preiter93/wireman.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "4fe54cab487264144a70ae9cda0c62453f9ffeb025d0023939987890b5c0f924"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "82cb5e9ccb00d23681917833d4106b9ad8e9b422296e4b35d70d6002f7c1fbe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be4a292a5998c26012050449bb9f6ba3c47ff6a2410356cddf2ff8ac11a38d5c"
    else
      url "https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84abf0dbc037d56548d1c6431c6c04b8f0f683fa5d5a7783ea55d32fe28dbdfc"
    end
  end
  
  def install
    bin.install "wireman"
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
