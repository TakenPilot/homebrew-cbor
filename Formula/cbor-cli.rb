class CborCli < Formula
  desc "Command-line tool for encoding, decoding, and inspecting CBOR data"
  homepage "https://github.com/takenpilot/cbor-cli"
  url "https://github.com/takenpilot/cbor-cli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "86a6c93884b8fc8d72c5bc2c74626dd90c1719355e468c6080e9d9476c3f7213"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Replace with a simple command that tests functionality
    assert_match "v0.5.0", shell_output("#{bin}/cbor --version")
  end
end
