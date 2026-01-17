class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.4/transform-rules-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "0fb800bf8348e3c681a3a88e801353325badc81e510c8464abd3385345db9bce"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.4/transform-rules-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "e8ab0fed2b929119759cf86e31b8a02308de4df93fd24cd0850bba29f18077c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.1.4/transform-rules-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c8d93e780555b64952eb047d00792fe047803f2169938126cff0693516a3d74"
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
