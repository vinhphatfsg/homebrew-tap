class RulemorphServer < Formula
  desc "HTTP server for rulemorph UI and API"
  homepage "https://github.com/vinhphatfsg/rulemorph"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-server-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "08593b55049d55a6f2260d85c5189ee38fba7ffdab5d8258829565397ce9037a"
    end
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-server-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "8b7842590b17c521b41b029c23389c76b9b432a1e298f780da5211bad3ecfd7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhphatfsg/rulemorph/releases/download/v0.2.3/rulemorph-server-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdbfb20b8c9abcec0320448ef37ef34ef1f3f19f8c103faaf6681305d72b8767"
    end
  end

  def install
    bin.install "rulemorph-server"
  end

  test do
    assert_match "rulemorph", shell_output("#{bin}/rulemorph-server --help")
  end
end
