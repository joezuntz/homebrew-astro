require 'formula'

class TmvCpp < Formula
  homepage 'http://code.google.com/p/tmv-cpp/'
  url 'http://tmv-cpp.googlecode.com/files/tmv0.71.tar.gz'
  sha1 'd407748ff4f6a0689edca006b070ff883ec59bbe'

  depends_on 'scons' => :build

  def install
    # xcode 5.0.1's clang doesn't support OpenMP
    system "scons WITH_OPENMP=false CXX=/usr/bin/clang++"
    system "scons install PREFIX=#{prefix} CXX=/usr/bin/clang++"
  end

#  def test
#
#  end
  
end
