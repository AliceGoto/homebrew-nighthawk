class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/#{version}/nighthawk-darwin-arm64.zip"
      sha256 "716b814e955c3cdc8e92d4e882ffd79fdef40ea4ed9b9947c814c45ddaed962d"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/#{version}/nighthawk-darwin-x64.zip"
      sha256 "5938b85a0d8b9ab4a470de7304a10909bc4d705789dea041c5d956efd8d7e0ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/#{version}/nighthawk-linux-arm64.zip"
      sha256 "31436e60bd7bd16d1781cdc10dbcb3e006e1cbbec341dafda83fa8367d482fc4"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/#{version}/nighthawk-linux-x64.zip"
      sha256 "ac800d31059fc9f36314c649df1d80965b3721db3f1d0b33cabb938f78c5bfc8"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
