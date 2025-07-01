class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.3"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.3/cunzhi-cli-v0.3.3-macos-x86_64.tar.gz"
      sha256  "727289bd7ea00cbfecc9558ae7cfcc49953d75147a31e60b78c0f37c3efc86a9"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.3/cunzhi-cli-v0.3.3-macos-aarch64.tar.gz"
      sha256  "70981a24f27535beade80304cfe95bc38dc7738f8e80d3b244d9c9b6185d1c71"
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
