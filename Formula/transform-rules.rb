class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.3/transform-rules-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "071611bb12175c901c04cd7db0ea8177e495b8ab4a5ee5b7122087545d2d7477"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.3/transform-rules-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "a09d32e03eef8f2978db073ccabbc6abb44e4fcbd4e328b4dd86e28649f4c69d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.3/transform-rules-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b2f8fd14014bc0f861bb0c9597f1329101da9ff920fc35d13afa3caa841289b"
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
