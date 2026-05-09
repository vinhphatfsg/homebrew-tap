class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "53c04fc0007ce437f282705db9bb1233890455fb4eb134b213d75611ca623721"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "01d107eccf049429bca830454cfa391b9e01e628db23b24b4d28ae3e6a64d03b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adba42713af4c1fedbfd5f2b956dadab35792562d98fa0222561c89d20e00b09"
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
