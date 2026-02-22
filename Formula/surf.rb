class Surf < Formula
  desc "CLI for the SurfContext/ARDS standard — sync, chat, and manage CloudSurf projects"
  homepage "https://github.com/cloudsurf-software/surfcontext-cli"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.2.0/surf-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7fcc9a3f122fb7f1ef041ba737df78636c58076d89449bb9f92c01936a962ac"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.2.0/surf-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1139d726bd3230a7846e37a5ca1e36bf7d2b3ad8eeb5146430a1dc995f3d1f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.2.0/surf-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10bdc0f622bc2f392b1d6b75d0a571b2a84218560dca3456b3fc280c11cb7df2"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.2.0/surf-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbf9dfefb71083b20f4a459c8549f7ce007d93bcf54d559b6fcd7af1b06b6ea1"
    end
  end

  def install
    bin.install "surf"
  end

  test do
    assert_match "surfcontext-cli", shell_output("#{bin}/surf --version")
  end
end
