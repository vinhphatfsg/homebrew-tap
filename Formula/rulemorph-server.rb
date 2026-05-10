class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-server-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2dfa0707a7d9100c3566f946eb71eae26fba57dc1bee1db7152c78ba31021fd"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-server-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f1c29118dc3ad332539e60151b15bf2daad4c5f3233241ba1121a4e92861272"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.0/rulemorph-server-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbc776df41e29b8254e08fb4aa9da8bf523431984d920ce92b106245a9001ee8"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
