class Dexy < Formula
  desc "Keep your Mac wide awake — lid closed, on battery, no nonsense"
  homepage "https://github.com/jonobri/dexy"
  url "https://github.com/jonobri/dexy/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "a8cfdb7aa1938c27ae1b4d3179aa8c85ec88084bd160955da3d0d01925d596c4"
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
