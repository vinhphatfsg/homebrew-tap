class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-server-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "26276a6df236c566a9a899cf7b9711b49d133ea6de7b69eb3e40511379a16c34"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-server-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "3816a09498f522983085d157635790123da19b891928891951ac0d7ac898a003"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.4/rulemorph-server-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09d6357b93fda5b1f63a747091faf1b7484112134cd17e5b596aef2adc32af9d"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
