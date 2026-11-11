class Nighthawk < Formula
  desc "AI coding agent for the terminal, based on kimi-code"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "2.5.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
  sha256 "13f091afd59a4dad4c5f0dcbf0562e85993b091b42d046a7e45c30644ca66ddf"

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "2.5.2", shell_output("#{bin}/nighthawk --version")
  end
end
