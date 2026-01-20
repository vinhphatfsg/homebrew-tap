class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.0/rulemorph-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "SHA256_ARM_PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.0/rulemorph-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "SHA256_INTEL_PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.0/rulemorph-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "SHA256_LINUX_PLACEHOLDER"
    end
  end

  def install
    bin.install "rulemorph"
    bin.install "rulemorph-mcp"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph --help")
  end
end
