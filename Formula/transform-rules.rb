class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.2.0/transform-rules-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c0e389c2f06c00e37816ff8e59c9cbcd567fa5b0f1f7b717eaac9e054db72e8"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.2.0/transform-rules-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e306186ed5f85c8523958d2a9651bba16e0a31f4c365837fe7938e2a29468821"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v0.2.0/transform-rules-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d49cc665b1c097e14014c4e5e7f6906bd97bcea43e8c90ea768c22e3647cc3eb"
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
