class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "101e3679607be9270c238ac523e70c260d68ac35c0754c922d7ab4678eb4e5aa"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "e6d7e99470850a58d722da67cef0ab60a86a4b799763cd5797bf949f9bf0828a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96bbf45ea500a77c4941bd1f4867c776059a1f524a87f7d992b8449e82bfe3e3"
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
