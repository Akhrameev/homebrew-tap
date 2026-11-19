# Prebuilt Apple Silicon binary from https://github.com/Akhrameev/simslim/releases
class Simslim < Formula
  desc "Run more iOS, tvOS, watchOS and visionOS simulators on one Mac (Swift port)"
  homepage "https://github.com/Akhrameev/simslim"
  url "https://github.com/Akhrameev/simslim/releases/download/v0.1.0/simslim-v0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "7cfe61c9bc0707c6d6b7baf3897bcb5ca853cc0775d2c9c4ebae539cee6a7fe3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "mobai-app/tap/simslim", because: "both install a simslim binary"

  def install
    bin.install "simslim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/simslim --version")
  end
end
