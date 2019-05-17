class MopidySpotify < Formula
  desc "Mopidy extension for playing music from Spotify"
  homepage "https://github.com/troyxmccall/mopidy-spotify"
  url "https://files.pythonhosted.org/packages/6b/e8/1e16bada383089cf980630b8fdf2b2c44ae7d1a6afd8e1a7a49947465f38/Mopidy-Spotify-3.1.0.tar.gz"
  sha256 "f5123a4ce310eca7d16fcb693839729249df86610ed779e7cea17927b3ac8b66"
  head "https://github.com/troyxmccall/mopidy-spotify.git"
  revision 1

  depends_on "python@2" if MacOS.version <= :snow_leopard
  depends_on "troyxmccall/mopidy/mopidy"
  depends_on "troyxmccall/mopidy/pyspotify"

  # Dependencies assumed bundled by mopidy:
  # - pykka
  # - requests

  def install
    system "python", *Language::Python.setup_install_args(libexec)

    site_packages = "lib/python2.7/site-packages"
    pth_contents = "import site; site.addsitedir('#{libexec/site_packages}')\n"
    (prefix/site_packages/"homebrew-mopidy-spotify.pth").write pth_contents
  end

  test do
    system "python", "-c", "import mopidy_spotify"
  end
end
