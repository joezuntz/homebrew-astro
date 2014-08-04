require 'formula'

class CosmosisDeps < Formula
  url "http://bitbucket.org/cosmosis/downloads/cosmosis-installer.tar.gz"
  homepage "http://bitbucket.org/cosmosis"
  sha1 "1234567890ABCDEF1234567890ABCDEF"

  depends_on "git"
  depends_on "gcc48"
  depends_on "python"
  depends_on "cfitsio"
  depends_on "gsl"
  depends_on "fftw"
  depends_on "mpich2"
  depends_on "libpng"
  depends_on "freetype"  
  depends_on :python => "numpy"
  depends_on :python => "scipy"
  depends_on :python => "matplotlib"
  depends_on :python => "pyyaml"

  def install
  	bin.install("cosmosis-installer")
  end

end
