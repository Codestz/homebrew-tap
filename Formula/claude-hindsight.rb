class ClaudeHindsight < Formula
  desc "20/20 hindsight for your Claude Code sessions"
  homepage "https://github.com/Codestz/claude-hindsight"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-apple-darwin.tar.gz"
      sha256 "6f8c122f7778c5b331dfad74a562431b3703d6daf5ceabfaed85af7e315905a3"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-apple-darwin.tar.gz"
      sha256 "7296795f877cb3fccc6c82886c0d62b0aa71a2006a21bdfced27ad55b58cb9cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69a52a22c361200fcfb34d56dedb500367d6ec7f6e982f30f89b43b7d12a5d1b"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00edc759af1dbc8a7165d29d4f342d29ad0973efb4969e1d47e941ebdaf03a0a"
    end
  end

  def install
    bin.install "claude-hindsight"
  end

  test do
    system "#{bin}/claude-hindsight", "--version"
  end
end
