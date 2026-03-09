# This formula is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Mcpx < Formula
  desc "MCP servers as CLI tools — built for AI agents"
  homepage "https://github.com/codestz/mcpx"
  license "MIT"

  # GoReleaser will replace this block on release
  on_macos do
    on_arm do
      url "https://github.com/codestz/mcpx/releases/download/v1.0.0/mcpx_1.0.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/codestz/mcpx/releases/download/v1.0.0/mcpx_1.0.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codestz/mcpx/releases/download/v1.0.0/mcpx_1.0.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/codestz/mcpx/releases/download/v1.0.0/mcpx_1.0.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "mcpx"
  end

  test do
    system "#{bin}/mcpx", "version"
  end
end
