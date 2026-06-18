class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "7c4ecdc2ae8326ab585294fb94485750b4f50d3f9f825a34962f8dc77592f62c"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "0047ea1637b77def110fcd54072ba092a768a4b29621d0c2eb214791d946052c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edeb222c63899afd8ac21ecd6929ea3047b0535b434541804195a8dd08ecece0"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a5d270ba45018adffe0bd81a4c1bf78736491e65c19a8ff9a0c425aa6d0d6d7"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
