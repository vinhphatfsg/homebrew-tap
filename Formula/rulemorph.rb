class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "c66267132a3ce606414a24f84c9dc173e49e793bae39a4a0eb940b8c01666b9d"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "900716c623f59eb549fcc07510fd2e8c86834f388a8ad9eb2aa4a4bbf396ddf9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e3ffdafabe1b45242eefed896f96de3ba6c62caf7041b725c14b04868cf4451"
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
