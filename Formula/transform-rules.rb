class TransformRules < Formula
  desc "CLI to transform CSV/JSON data using YAML rules"
  homepage "https://github.com/vinhphatfsg/transform-rules-rs"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v#{version}/transform-rules-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "SHA256_MACOS_ARM64_PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v#{version}/transform-rules-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "SHA256_MACOS_X64_PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/transform-rules-rs/releases/download/v#{version}/transform-rules-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "SHA256_LINUX_X64_PLACEHOLDER"
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
