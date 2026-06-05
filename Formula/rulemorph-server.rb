class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-server-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "2d7da744b89fbf4814e847313de20ce6d620cb9a8d88db67c1eb35a907dbe165"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-server-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "0691f0c2ad82f9eacc98464c7ed5df96c5f5b2794c7ca7d444f1c7401734368e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.3/rulemorph-server-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86ab1448a03cba55a4a4d4b8fecc0bc8738dcaafb109dc0a7a5c79f7d8c607e7"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
