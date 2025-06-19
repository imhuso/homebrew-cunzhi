class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.11"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.11/cunzhi-cli-v0.2.11-macos-x86_64.tar.gz"
      sha256  "de8337d40461463efa597f02c28c1bac3ad91de64f05e4eba3b6c7d3cce160e2"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.11/cunzhi-cli-v0.2.11-macos-aarch64.tar.gz"
      sha256  "c5a8a47664cd352ba7fffcc1b299305f43a73a74ad70b37334ce8b05c9d5c800"
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
