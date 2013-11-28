require 'formula'

class GalSim < Formula
  homepage 'https://github.com/GalSim-developers/GalSim'
  url 'https://github.com/GalSim-developers/GalSim/archive/v1.0.0.tar.gz'
  sha1 '705ef051f45202e973d2dbb6be8a54a4969bf0c9'
  head 'https://github.com/GalSim-developers/GalSim.git'

  depends_on 'scons' => :build
  depends_on 'fftw'
  depends_on 'boost'
  depends_on 'tmv-cpp'

  # pyfits should come from pip
  depends_on 'pyfits' => :python
  depends_on 'numpy' => :python

  def install
    # This ought to be part of a standard homebrew install;
    # required so that homebrew creates symlinks
    #   lib/pythonX.Y/galsim -> Cellar/gal-sim/0.2/lib/pythonX.Y/galsim
    # rather than
    #   lib/pythonX.Y -> Cellar/gal-sim/0.2/lib/pythonX.Y
    pyver = ''
    IO.popen("python -c 'import sys; print sys.version[:3]'") {|pv_io|
        pyver = pv_io.read.strip
    }
    ohai "Python version is *#{pyver}*"
    mkdir_p "#{HOMEBREW_PREFIX}/lib/python#{pyver}"

    system "scons CXX=/usr/bin/clang++ PYTHON=/usr/local/bin/python"
    system "scons install PREFIX=#{prefix} CXX=/usr/bin/clang++ PYTHON=/usr/local/bin/python"

    ohai ""
    ohai "The GalSim installer may warn you that #{lib}/python isn't in your python search path."
    ohai "You may want to add all Homebrew python packages to the default paths by running:"
    ohai "   sudo bash -c 'echo \"/usr/local/lib/python\" >> \\\\"
    ohai "     /Library/Python/#{pyver}/site-packages/homebrew.pth'"
    ohai "Which will create the file   /Library/Python/#{pyver}/site-packages/homebrew.pth"
    ohai "with contents:"
    ohai "  /usr/local/lib/python#{pyver}"
    ohai ""
  end
end
