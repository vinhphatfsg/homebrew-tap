class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.1/rulemorph-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "cb494cd67ee97f6ffed0f607e6ac0f247f403a2fb1c662d0d0e58ae7f3cd50f2"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.1/rulemorph-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "4a2ef3c8351fa4dc7a0fecc6f7c65a58eecc63ccac26d1278c643b4968a6c336"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.1/rulemorph-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d9f3119cc7ab8e613af454e978d6fbacaee41494c38a311813775baae86741e"
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
