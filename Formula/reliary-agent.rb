class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.6/reliary-v0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "339df61e1adfec641c3d41d9c111c065a56d155ded9a3334c8a209eabe1b5a76"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.6/reliary-v0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "e23f5c96ad582746ba8e306d555311f507921a07254e32906ef50da91c357b8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.6/reliary-v0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7adcf17cb67e57de08838058ab38075e0433b5274a6bc19fce3bb11698a12dab"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.6/reliary-v0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae1f6a3029a1d3466f5d1290e3f9d814b650e7d08cde19e85c332544da8f53b0"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
