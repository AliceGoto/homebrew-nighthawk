class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
      sha256 "01df56d52db84fb730a206762baba94f1926c3a1470783a3a16aeb4a79ad2802"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-x64.zip"
      sha256 "e631bb24be7f464450fb296276b005f9097d3bf75752ebee50bc0e8e6c03c7f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-arm64.zip"
      sha256 "4122b76786bd6aded3afca93565ef18d71e666864eb5afd846f8e53b07c8193d"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-x64.zip"
      sha256 "8d564d803d409ba9592b2a38ca5628e88288f4e6ec99a0b239b2deba34fd3f50"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
