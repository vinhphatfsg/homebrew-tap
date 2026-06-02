class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "cac9c4bcc51333d97ef4ccc9f12ae482031517545277db6358d7cb4f70a5b327"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "13e2af03052a23526e292131b755be6f7584ed709f3bdab4c3e32ca4300ef4ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94f15a16409f8d7bfb0bf4e11917a40bbdfbdf8debae64f54eead40856324529"
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
