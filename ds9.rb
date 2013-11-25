require 'formula'

class Ds9 < Formula
  homepage 'http://hea-www.harvard.edu/RD/ds9/'
  if MacOS.version == :snow_leopard
    url 'http://hea-www.harvard.edu/RD/ds9/download/darwinsnowleopard/ds9.darwinsnowleopard.7.3b5.tar.gz'
    sha1 ''
  elsif MacOS.version == :lion
    url 'http://hea-www.harvard.edu/RD/ds9/download/darwinsnowleopard/ds9.darwinsnowleopard.7.3b5.tar.gz'
    sha1 ''
  elsif MacOS.version == :mountain_lion
    url 'http://hea-www.harvard.edu/RD/ds9/download/darwinsnowleopard/ds9.darwinsnowleopard.7.3b5.tar.gz'
    sha1 ''
  elsif MacOS.version == :mavericks
    url 'http://hea-www.harvard.edu/RD/ds9/download/darwinsnowleopard/ds9.darwinsnowleopard.7.3b5.tar.gz'
    sha1 ''
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