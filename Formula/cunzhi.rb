class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.2"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.2/cunzhi-cli-v0.3.2-macos-x86_64.tar.gz"
      sha256  "ac49efb9ffe39b57c857f85957b00b06cb5b0fc124e2095f27f8ba33545d397d"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.2/cunzhi-cli-v0.3.2-macos-aarch64.tar.gz"
      sha256  "75aa637086d619c6f936c591cde00c6e20d039a48f72a1766edd2cdafe19b85b"
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
