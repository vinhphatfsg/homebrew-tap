class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4f37eda2191da1e77c83014ab76685c63a0b63406c896540644710f2c29f651"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "08cabc22840a21f88c25e8ae800100fbc35deede9c3ee80ae5cbc55e40088dd7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9e5b1f35a2283f5f1161da10c79067e0f598e1b54183be8a0694d797ed26eba"
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
