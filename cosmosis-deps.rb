require 'formula'

class CosmosisDeps < Formula
  url "http://bitbucket.org/joezuntz/cosmosis/downloads/cosmosis-installer.tar.gz"
  homepage "http://bitbucket.org/cosmosis"

  depends_on "git"
  depends_on "gcc"
  depends_on "python"
  depends_on "cfitsio"
  depends_on "gsl"
  depends_on "fftw"
  depends_on "open-mpi"
  depends_on "libpng"
  depends_on "freetype"  
  depends_on "numpy" => :python
  depends_on "scipy" => :python
  depends_on "matplotlib" => :python
  depends_on "pyyaml" => :python

  def install
  	bin.install("cosmosis-installer")
  end

end
