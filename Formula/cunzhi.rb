class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.6"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.6/cunzhi-cli-v0.3.6-macos-x86_64.tar.gz"
      sha256  "67dbb4e82cd4dc7a98ce681fb4ae9ebb22a3bfcb21ed7ffcd2a8bc65592dcb18"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.6/cunzhi-cli-v0.3.6-macos-aarch64.tar.gz"
      sha256  "babe712f49a2e4b98bbf45c4ac82b97d4b967f43ab72d236d2db8ffc2f8e9e50"
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
