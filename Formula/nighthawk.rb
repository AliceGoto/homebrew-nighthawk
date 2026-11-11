class Nighthawk < Formula
  desc "AI coding agent for the terminal, based on kimi-code"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "2.5.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
  sha256 "10980c8c57798cf2da5707222b330c3e138baab89868a4f1014de7c1a04f7e7e"

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "2.5.2", shell_output("#{bin}/nighthawk --version")
  end
end
