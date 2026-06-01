class Dexy < Formula
  desc "Keep your Mac wide awake — lid closed, on battery, no nonsense"
  homepage "https://github.com/jonobri/dexy"
  url "https://github.com/jonobri/dexy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "22ea9da1d49bee5acd1826b11a26839cd31c254a7efdc26a32d4bf65ec18d413"
  license "MIT"

  def install
    bin.install "dexy"
  end

  test do
    assert_match "dexy 1.0.0", shell_output("#{bin}/dexy -v")
  end
end
