class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
      sha256 "f31c79b08df3c19f8943cdfac395f01eed30a3b082475692ecd403176bf51239"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-x64.zip"
      sha256 "b0073ab2448d76d21183080d24150898ff716b4518b3d752b555dec2b1ccedf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-arm64.zip"
      sha256 "55e92c7b5c1eb7d404ef55938aa9ddeee1c010b28810af96da65337f5a68d63c"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-x64.zip"
      sha256 "a0a21406569f3e9819933350e4937218085d4ccbafea5786e17fc04ec0f8754a"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
