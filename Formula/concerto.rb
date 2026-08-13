class Concerto < Formula
  include Language::Python::Shebang

  desc "Chop a continuous DJ set into a tagged, cover-arted album"
  homepage "https://github.com/jonobri/concerto"
  url "https://github.com/jonobri/concerto/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "73295c8af7ee6ccc1c69ce93f853f8eccc18b2d228bc3c077d0e51b7801b8761"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.13"

  def install
    # Pin the shebang to the Python we depend on, so it doesn't ride on whatever
    # `python3` happens to be first on the user's PATH.
    rewrite_shebang detected_python_shebang, "concerto"
    bin.install "concerto"
    man1.install "concerto.1"
  end

  test do
    # `version` tracks the release tag, so this stays correct across bumps.
    assert_match "concerto #{version}", shell_output("#{bin}/concerto -v")
    # No subcommand given: prints usage and exits non-zero.
    assert_match "usage: concerto", shell_output("#{bin}/concerto", 1)
  end
end
