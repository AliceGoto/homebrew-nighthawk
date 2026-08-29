class Nighthawk < Formula
  desc "Security-first AI coding agent for the terminal"
  homepage "https://github.com/AliceGoto/nighthawk"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-arm64.zip"
      sha256 "45028c0d344280b5236181a553a9b1d4c783b31fc570c8e225296cb7f85d0e53"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-darwin-x64.zip"
      sha256 "d7813993a0bb62b9038e36396634b9058a75f808d620359d0f088320e0e7f092"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-arm64.zip"
      sha256 "b243aba1685997def93bd4765c2099c70a7b33c00b7a159a76f53f6aae0901fd"
    else
      url "https://github.com/AliceGoto/nighthawk/releases/download/v#{version}/nighthawk-linux-x64.zip"
      sha256 "ea70b0c0ed4d9d7f8cc16da182139a69f92db52d8cb41edfbca78f8cb927cf12"
    end
  end

  def install
    bin.install "nighthawk"
  end

  test do
    assert_match "nighthawk", shell_output("#{bin}/nighthawk --version")
  end
end
