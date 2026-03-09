class Krait < Formula
  desc "Code intelligence CLI for AI agents — LSP-backed symbol search and semantic editing"
  homepage "https://github.com/Codestz/krait"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/krait/releases/download/v#{version}/krait-aarch64-apple-darwin.tar.gz"
      sha256 "8a01791a29d42f11ca03aae9fa77779c742a50d40ae2b3e0f77e26dbbd591c1d"
    else
      url "https://github.com/Codestz/krait/releases/download/v#{version}/krait-x86_64-apple-darwin.tar.gz"
      sha256 "4d1e44f2d6fbf3f0cd7d981b1308e09e5ba89d7cd762f1945461e3fd8327e4f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/krait/releases/download/v#{version}/krait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b3b4a4cdba54a61e19c8fb62f9320f3af7a6c0ffd2e2c80d61ec0c3075dcc9b"
    else
      url "https://github.com/Codestz/krait/releases/download/v#{version}/krait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0be343a9e9721ec739d5f774b935b101fefe1985127cf2c2fb18b300167e92d6"
    end
  end

  def install
    bin.install "krait"
  end

  def caveats
    <<~EOS
      krait auto-installs language servers on first use.
      Run  in your project to generate a workspace config.

      TypeScript: npm install -g @vtsls/language-server
      Go:         go install golang.org/x/tools/gopls@latest
      Rust:       rustup component add rust-analyzer
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/krait --version")
  end
end
