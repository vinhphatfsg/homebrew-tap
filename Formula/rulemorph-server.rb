class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-server-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "91c0df590d1c819e0f70712d611bf2ba9d8b71881940da7ef34ae9e2176bc6c4"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-server-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "5795f44ccafe12726991af014e71ede7d2b671b05cb25722a248fb92d9a9fdb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.1/rulemorph-server-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8742a36a2dfd1f9bad55c9b74890ec47d5f7a6ffa79a3888b7c21dc10123d0bc"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
