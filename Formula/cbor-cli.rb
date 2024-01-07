class CborCli < Formula
  desc "CBOR CLI tool"
  homepage "https://github.com/takenpilot/cbor-rs"
  url "https://github.com/takenpilot/cbor-rs/archive/v0.4.0.tar.gz"
  sha256 "66fadd96bb769f8abee654e83e4b01357700d14dcfc0c3339dcd5a74a2d0fc9d"
  license "MIT"

  depends_on "rust" => :build

  def install
    # system "cargo", "install", "--path", "cli"
    system "cargo", "build", "--release", "--bin", "cbor"
    bin.install "target/release/cbor"
  end
end
