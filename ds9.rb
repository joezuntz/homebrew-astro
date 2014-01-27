require 'formula'

class Ds9 < Formula
  homepage 'http://hea-www.harvard.edu/RD/ds9/'
  version '7.3b5'
  if MacOS.version == :snow_leopard
    url 'http://ds9.si.edu/download/darwinsnowleopard/ds9.darwinsnowleopard.7.3b5.tar.gz'
    sha1 'e96d00d18c739407442a09ee931dadbe1dd435ca'
  elsif MacOS.version == :lion
    url 'http://ds9.si.edu/download/darwinlion/ds9.darwinlion.7.3b5.tar.gz'
    sha1 '5d7f0448e80298d71d9b0addf717e227c035b297'
  elsif MacOS.version == :mountain_lion
    url 'http://ds9.si.edu/download/darwinmountainlion/ds9.darwinmountainlion.7.3b5.tar.gz'
    sha1 '3bb2f7d15c8b6f366e7f19c5408acd47800ac18c'
  elsif MacOS.version == :mavericks
    url 'http://ds9.si.edu/download/darwinmavericks/ds9.darwinmavericks.7.3b5.tar.gz'
    sha1 '9443a0317e49eff9d79b7f7493e4429cda591f1e'
  else
    onoe "ds9 is only available for Snow Leopard and above"
  end

  def install
    # ds9 requires the companion zip file to live in the same location as the binary
    bin.install 'ds9', 'ds9.zip'
  end

  def test
    system "ds9"
  end
end
