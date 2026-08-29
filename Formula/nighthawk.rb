class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
      sha256 "9916e4c15e27e27d72c24a8193385468982290906b6df47e8a9c08f150ff935a"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-x64.zip"
      sha256 "643c153f566477622999219da7034592a013e7b56249a660ea1e8a02b56488f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-arm64.zip"
      sha256 "d87fae4dee1e9bcdbccf4332f4c0fe341358be440078571a1bf583e0c2906a14"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-x64.zip"
      sha256 "ddd5539c3d86e2426b403a46818c13404af2678dead0b0f49a7c138d19796060"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
