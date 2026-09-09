class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
      sha256 "746b72ef2d8e6a5a61546cfbceb1679abefb063c48ba245a6aef0361e31ef9b9"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-x64.zip"
      sha256 "d1379af3df460739b30fb9d7cb479dd88fcdddc9403dbb9761026406d6307444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-arm64.zip"
      sha256 "36ebcc59ac85813ee0a3eef280d0dcd27fe2f9ad058ee7bba6ad6f50b5bbbb48"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-x64.zip"
      sha256 "6174edb4e5caaa4fd359c0716242414908fa289ebbce8bd27907c5c4c868a348"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
