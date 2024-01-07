class CborCli < Formula
  desc "Command line tool for encoding and decoding CBOR using serde. Supports import and export for JSON, YAML, and TOML. Supports deep inspection of CBOR files."
  homepage "https://github.com/takenpilot/cbor-rs"
  url "https://github.com/takenpilot/cbor-rs/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "66fadd96bb769f8abee654e83e4b01357700d14dcfc0c3339dcd5a74a2d0fc9d"
  license "MIT"

  depends_on "rust" => :build

  def install
    # system "cargo", "install", "--path", "cli"
    system "cargo", "build", "--release", "--bin", "cbor"
    bin.install "target/release/cbor"
  end
end
