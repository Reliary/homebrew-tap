class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.5/reliary-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "7b1999cdd271bb4d03863d894f8c4afa93071dc0a5168cc29c781e272ae2b254"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.5/reliary-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "d29d766058ea7d9eea484ff42d6bb856afa9e1b3385ebb18b812bfe241bbab51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.5/reliary-v0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9c923357073933ba881f866b416c1745a48ea3442cc431bb53a0cbbc4ffc98e"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.5/reliary-v0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bc225876ec9f007d77d80d04da6380eb00c4cb80d4ed89b015d21cbbc00a0ce"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
