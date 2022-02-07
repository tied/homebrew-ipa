require 'formula'

class Sshpass < Formula
  url 'https://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz'
  homepage 'https://sourceforge.net/projects/sshpass'
  sha256 '71746e5e057ffe9b00b44ac40453bf47091930cba96bbea8dc48717dedc49fb7'

  depends_on 'gnu-sed'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
