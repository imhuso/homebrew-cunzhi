class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.5"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.5/cunzhi-cli-v0.3.5-macos-x86_64.tar.gz"
      sha256  "37810e18872c24a19354c92b1ba3f31a7d38fc4f2d2f331f5cee2244a2331354"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.5/cunzhi-cli-v0.3.5-macos-aarch64.tar.gz"
      sha256  "9407d1553c8ee5472c3df434020361178644861fde6308d82edbde159ecc37e6"
    end
  end
  # ----------------------------------

  def install
    bin.install "寸止", "等一下"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/寸止 --version")
    assert_match version.to_s, shell_output("#{bin}/等一下 --version")
  end

  def caveats
    <<~EOS
      🎉 寸止 MCP 工具集安装完成！

      • MCP 服务器：寸止
      • 弹窗界面：等一下

      更多信息请见：
      https://github.com/imhuso/cunzhi
    EOS
  end
end
