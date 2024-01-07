class CborCli < Formula
  desc "Command-line tool for encoding, decoding, and inspecting CBOR data"
  homepage "https://github.com/takenpilot/cbor-rs"
  url "https://github.com/takenpilot/cbor-rs/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "66fadd96bb769f8abee654e83e4b01357700d14dcfc0c3339dcd5a74a2d0fc9d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Replace with a simple command that tests functionality
    assert_match "expected-output", shell_output("#{bin}/cbor-cli some-command")
  end
end
