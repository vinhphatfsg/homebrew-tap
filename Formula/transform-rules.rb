class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "8caa7b054435716a3432e81fb0e81d351650fcbdd76777dcc7927edfcebab498"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "ec6b1ca9955b1a59eadaabb9caca7e50dd81b3ad6e0b03af7780c313ef779f05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0056ee80281c8e5ea37242be32d02fbe654d5ad29cd5c6cd0a6a56f4565c5d2c"
    end
  end

  def install
    bin.install "transform-rules"
    bin.install "transform-rules-mcp"
  end

  test do
    assert_match "transform-rules", shell_output("#{bin}/transform-rules --help")
  end
end
