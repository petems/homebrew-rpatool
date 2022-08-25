class Rpatool < Formula
  desc "Downloads rpatool and puts it into path"
  homepage "https://github.com/Shizmob/rpatool/"
  head "https://github.com/Shizmob/rpatool.git", branch: "master"

  def install
    bin.install 'rpatool'
  end

  test do
    system bin/"rpatool", "--help"
    assert_match "rpatool v0.8", shell_output("#{bin}/rpatool --version")
  end
  
end
