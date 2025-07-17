class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.8"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.8/cunzhi-cli-v0.3.8-macos-x86_64.tar.gz"
      sha256  "f6e590c627f539a4f560358ea6e4d57048cd8b6cc28688f42b0496af20c7008c"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.8/cunzhi-cli-v0.3.8-macos-aarch64.tar.gz"
      sha256  "1e8828c64db3a43a55f9a378392d7331ca15231815cdbeacac5ca60a8e11cc98"
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
