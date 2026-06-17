class ReliaryAgent < Formula
  desc "API proxy, code search, and edit safety for coding agents"
  homepage "https://github.com/Reliary/reliary-agent"
  license "MIT"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "b3560f2ed1da7284ca695160f6c23a725184fbac9f6b9b13578db1ccdb5449c8"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "07c65a36a1ae06ec31e8c6d510c7b0e8c48eed9059a7002155d9c276624de2fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83efbf478128e59bdfbeefb22f814cc3e8c2c04999c3d7dad28b37102f4fe1f0"
    else
      url "https://github.com/Reliary/reliary-agent/releases/download/v0.6.3/reliary-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f4bb583c59b5c577d4dc842144f59a7aa0c3e9064100fa2e009f3a2fe4aa387"
    end
  end

  def install
    bin.install "reliary-agent"
  end

  test do
    system "\#{bin}/reliary-agent", "--version"
  end
end
