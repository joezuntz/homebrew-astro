require 'formula'

class WCStoolsLibWCS < Formula
  homepage 'http://tdc-www.harvard.edu/wcstools/'
  url 'http://tdc-www.harvard.edu/software/wcstools/wcstools-3.8.7.tar.gz'
  depends_on 'cfitsio'

  def install
    cd 'libwcs'
    system "make"
    lib.install 'libwcs.a'
    include.install Dir['*.h']
  end
end
