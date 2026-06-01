class Dexy < Formula
  desc "Keep your Mac wide awake — lid closed, on battery, no nonsense"
  homepage "https://github.com/jonobri/dexy"
  url "https://github.com/jonobri/dexy/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "76cb53e37f9cf976578ffc0f633ef89577dcbd5228e9fd17f9a04a0d611f4726"
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
