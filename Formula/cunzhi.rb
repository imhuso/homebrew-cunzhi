class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.4"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.4/cunzhi-cli-v0.3.4-macos-x86_64.tar.gz"
      sha256  "7c91e0263cbb1481e4cf1f0842cb014ef1b094d6e4c1d7676a97ee2ab2e7ea59"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.4/cunzhi-cli-v0.3.4-macos-aarch64.tar.gz"
      sha256  "e0c338bfa17058c16e1e8cd6d434fea8fb6245ee3ec60b97f88b86c795d1f7a3"
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
