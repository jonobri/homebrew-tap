class Dexy < Formula
  desc "Keep your Mac wide awake — lid closed, on battery, no nonsense"
  homepage "https://github.com/jonobri/dexy"
  url "https://github.com/jonobri/dexy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "c5dc7e458a9fc171a69e066171dcbcc213d31381d2ea09d14add0a13c38816c6"
  license "MIT"

  def install
    bin.install "dexy"
    man1.install "dexy.1"
  end

  test do
    # `version` tracks the release tag, so this stays correct across bumps.
    assert_match "dexy #{version}", shell_output("#{bin}/dexy -v")
  end
end
