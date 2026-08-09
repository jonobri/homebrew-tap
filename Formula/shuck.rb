class Shuck < Formula
  include Language::Python::Shebang

  desc "Get the documents out of a JavaScript shell"
  homepage "https://github.com/jonobri/shuck"
  url "https://github.com/jonobri/shuck/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ca9c5e7b83fd7addf38343b2ea69cb06efd95808be3d1f2882e12667bfa8c01d"
  license "MIT"

  depends_on "python@3.13"

  def install
    # Pin the shebang to the Python we depend on, so it doesn't ride on whatever
    # `python3` happens to be first on the user's PATH.
    rewrite_shebang detected_python_shebang, "shuck"
    bin.install "shuck"
    man1.install "shuck.1"
  end

  def caveats
    <<~EOS
      shuck drives a headless browser. It looks for Chrome, Chromium, Brave or Edge in the
      usual places; if yours lives somewhere else, set SHUCK_CHROME to the binary path.
    EOS
  end

  test do
    # `version` tracks the release tag, so this stays correct across bumps.
    assert_match "shuck #{version}", shell_output("#{bin}/shuck -v")
    # No URL given: prints usage and exits non-zero.
    assert_match "usage: shuck", shell_output("#{bin}/shuck", 1)
  end
end
