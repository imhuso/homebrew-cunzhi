class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.6"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.6/cunzhi-cli-v0.2.6-macos-x86_64.tar.gz"
      sha256  "011d7eea008097c9ec35bed624d53f73c4fb2658cf04af096a39f72f6c95fcb5"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.6/cunzhi-cli-v0.2.6-macos-aarch64.tar.gz"
      sha256  "61a67c575a9c625ae7f411e0ed27d0e793947e211f5ac053a60e38914cb5633f"
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
