class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "d207c014d70d134945996831388f0069b4e1646db5b6d5a810263121e1690137"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "6e0af80b20161c741a4248dc7c9e55d8d612557f67853ddfefc31a28f54659ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.5/transform-rules-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2c73f0780d5f72ff47accfa64adc2a3c9d50a960b62ee6f4b06558b70d78e73"
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
