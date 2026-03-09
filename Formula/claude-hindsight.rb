class ClaudeHindsight < Formula
  desc "20/20 hindsight for your Claude Code sessions"
  homepage "https://github.com/Codestz/claude-hindsight"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-apple-darwin.tar.gz"
      sha256 "9648cb150d632dbe03ab81217db82ab0ae251e6e1f7d04edd09be4a7643a4d71"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-apple-darwin.tar.gz"
      sha256 "d0bc4cdfab882d42b2c4f8b9992e14d26affa5cdae59a612a36a426f71727590"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9426001622cba17baf3430513946881d4a6920482220681d86abcd5057697369"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40be1bcb2a11d656515053ea37941c3be4b990932935335ed1fa1c143e5677f"
    end
  end

  def install
    bin.install "claude-hindsight"
  end

  test do
    system "#{bin}/claude-hindsight", "--version"
  end
end
