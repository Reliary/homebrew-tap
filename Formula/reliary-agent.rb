class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "e2714a1907125cdfc7473b4e8c07449b22c232e198f0368334384319b758b9ba"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "827fc7036ec4625f3e3361331b88e4729351b801ebc7d92c6e1baa94555bb94d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a1ab6713fcd9730567b1c16d27daf81965fdc483662a3f295c9cff251ac1cc9"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b91752d20ef7db8cf6d55042560fb5d19ab74f7ea41a26e48498459c653ecf4b"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
