require 'formula'

class Weircd < Formula
  url 'http://eloxoph.com/weircd/releases/WeIRCd0.8.2-src.tar.gz'
  homepage 'http://eloxoph.com/weircd/'
  md5 '916d84a99ddd905e9db865bbce28874a'
  version '0.8.2'

  # depends_on 'cmake'

  def install
    system "./setup.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
