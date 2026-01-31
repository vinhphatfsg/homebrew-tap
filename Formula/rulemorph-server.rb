class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-server-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "8cdc21ccc9560c9b63de23aa8064e4d15c5d4491868f21582cb9248748835610"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-server-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "dda2f16e882ae1d61048219d090db5df645900e2e0ebe1c1aa3d3d2ca65b1d44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.2/rulemorph-server-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ac6309f16fd654357a66ba705a4d81935b9385a2f4d12ef13b90337ac8fcc9c"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
