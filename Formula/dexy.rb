class Dexy < Formula
  desc "Keep your Mac wide awake — lid closed, on battery, no nonsense"
  homepage "https://github.com/jonobri/dexy"
  url "https://github.com/jonobri/dexy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4a2ef6b65e1fd0fdfd3d5bd2dda3bed59181070e56623f60ebb9205e5de0a0fc"
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
