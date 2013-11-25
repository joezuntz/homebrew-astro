require 'formula'

class Plot < Formula
  homepage 'https://github.com/joezuntz/plot'
  head 'https://github.com/joezuntz/plot.git'
  depends_on :python => "matplotlib"
  def install
    bin.install('plot')
  end
end
