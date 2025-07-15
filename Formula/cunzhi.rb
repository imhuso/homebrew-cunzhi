class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.7"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.7/cunzhi-cli-v0.3.7-macos-x86_64.tar.gz"
      sha256  "1961dffaf4ea619256ec40d49799596079e120dc9c561bcb65d5a8f3c365247e"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.7/cunzhi-cli-v0.3.7-macos-aarch64.tar.gz"
      sha256  "7b76d148e44a339b0c4eb42e5bfb177569a3bf67f68e46069a94ebb3873e879d"
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
