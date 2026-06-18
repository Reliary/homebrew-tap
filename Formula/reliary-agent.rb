class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "6f78b3cc9c7401dfdbde6fd819da53e809f8574824cd36d031166269db3f210b"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "f1d03d50c12023009aa19700ff6206fc51b0e17d2cb178f583f66d1ee90564bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b16c73f65e99b885e10d978858d63851b271d799cb5d99bfcce5d160541d8a2"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a5f6552f1eda5f3c7ac7e7f2bdd9d51399ede144fc0ffba014670d7cb924408"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
