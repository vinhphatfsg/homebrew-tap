class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "540ba5e0187c1014cca5463c5f8c450a1e4cf5906fe19ab5f777cda572120e31"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a84906b7ea2db6744da84ca9b70d43883535784e43321468245a0e4b28407e67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e23518273778f17742d045014b651742948d12672273fca0e356957d20eb5c1b"
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
