class Nighthawk < Formula
  desc "AI coding agent for the terminal, based on kimi-code"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "2.5.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
  sha256 "4f6cdd4f404311633b28b63e36318f3da2a2d178a7cd5bbdf3debcc0c6b8b1c6"

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "2.5.2", shell_output("#{bin}/nighthawk --version")
  end
end
