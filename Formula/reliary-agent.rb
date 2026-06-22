class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.11/reliary-v0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "8d75926943556711a5b0a839c0784744ab643f6883c118a7ad86db6a9e82694f"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.11/reliary-v0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "a03430876751248b79f4bb211cc63ff6425abd2843e591a4eec23ee085365a4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.11/reliary-v0.6.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21620c829165a19de02eecb05ebe58857f46e0d9c107da676e14254777d2f509"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.11/reliary-v0.6.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b28ea2c011086db00b68341662be6d0be6a3976b03e0d8703276402d36d7aaf"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
