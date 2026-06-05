class Rulemorph < Formula
  desc "CLI for YAML-based declarative data transformation"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "ec8a1d016629e3db54e6e9eb1fc5c4a73b1f7e0ddca55f213342ece2ed3ae612"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "0fad1b0bc5ba63678248d1c684bdee064c2050e932c366b1adb24938355a1af9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fa54d21e11f1821a900b7f5cebcf8fa07a02684cee699ca62803c4f4c13614e"
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
