class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "7c80cc038a3af1f3577f8fba7c5e0966ff9537a86b06a0d414c56f26984ac00e"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "c3fee8438dedb6f131fc8210855649e5342c3cc34fa14c87961bd5c2209f34b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cb05d9fa67e3213b06f02380e409435c4295d2bd14e0a1a951e5155b4b57955"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.4/reliary-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "545276e4ca02488d2eacbff8570f40750eb84305d976ce4670b1567bbe9429aa"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
