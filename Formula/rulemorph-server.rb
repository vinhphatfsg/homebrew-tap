class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-server-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "4c37668a5225bb6b0babccb9271d5d77c33682df0ef1d513d21b46795250d411"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-server-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "636ee10ed5b89d780bcfda394ce9b20ea428fc65c5d246a09827edbf9478d3f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.3.2/rulemorph-server-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfe1fa1d5e5bcf9b51b5ad643435f4217e739b0dac01f41c495603377d2f2b91"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
