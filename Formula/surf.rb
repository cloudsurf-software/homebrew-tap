class Surf < Formula
  desc "CLI for the SurfContext/ARDS standard — sync, chat, and manage CloudSurf projects"
  homepage "https://github.com/cloudsurf-software/surfcontext-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.1.0/surf-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.1.0/surf-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.1.0/surf-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.1.0/surf-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "surf"
  end

  test do
    assert_match "surfcontext-cli", shell_output("#{bin}/surf --version")
  end
end
