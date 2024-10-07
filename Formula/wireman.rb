class Wireman < Formula
  desc "Wireman: A grpc client for the terminal"
  homepage "https://github.com/preiter93/wireman"
  url "https://github.com/preiter93/wireman/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "9378dc100599c844d68e86e4bf5ba31b11f6c1f591f4bf3c83864215612b4401"
  license any_of: ["MIT"]
  head "https://github.com/preiter93/wireman.git", branch: "main"
  version "0.1.4"

  # depends_on "rust" => :build

  # bottle do
  #   root_url "https://github.com/preiter93/wireman/releases/download/v0.1.4"
  #   # macOS Apple Silicon (aarch64)
  #   sha256 cellar: :any_skip_relocation, arm64_monterey: "577604876f2ba9d24b6f6fa42bf5bc50b0cb20843d143a185d6630f805f37de6"
  #   # macOS Intel (x86_64)
  #   sha256 cellar: :any_skip_relocation, monterey: "e28f9d45d0efb46d3b901244a89fd37215cdbfe6bc3bad7b0b3efd3d59f4bc09"
  #   # Linux ARM (aarch64)
  #   sha256 cellar: :any_skip_relocation, linux_arm64: "0d11f756e57a9a5d2ea15b355796ec47e50b048548f6fc57bc96cbf6d2c86da1"
  #   # Linux Intel 32-bit (i686)
  #   sha256 cellar: :any_skip_relocation, linux_i686: "5bac1b8c324ee865f7391c7c209321755a7f79615aa901d4207220da5f7d80c5"
  #   # Linux Intel 64-bit (x86_64)
  #   sha256 cellar: :any_skip_relocation, linux_x86_64: "eb02fd2b9053c4c6a1c4de0657a9e733644cd2c331ebc1da0d2c8d291b482737"
  # end

  # def install
  #   bin.install "wireman"
  # end
  
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/wireman", "--version"
  end
end
