class Mako < Formula
  desc "AI in your terminal — full-screen TUI with SurfDoc rendering"
  homepage "https://cloudsurf.com/mako"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.3.0/mako-macos-arm64"
      sha256 "PLACEHOLDER_WILL_UPDATE_AFTER_RELEASE"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.3.0/mako-macos-x86_64"
      sha256 "PLACEHOLDER_WILL_UPDATE_AFTER_RELEASE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.3.0/mako-linux-arm64"
      sha256 "PLACEHOLDER_WILL_UPDATE_AFTER_RELEASE"
    else
      url "https://github.com/cloudsurf-software/surfcontext-cli/releases/download/v0.3.0/mako-linux-x86_64"
      sha256 "PLACEHOLDER_WILL_UPDATE_AFTER_RELEASE"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "mako"
  end

  test do
    assert_match "mako", shell_output("#{bin}/mako --version 2>&1", 1)
  end
end
