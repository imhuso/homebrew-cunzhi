class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.8"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.8/cunzhi-cli-v0.2.8-macos-x86_64.tar.gz"
      sha256  "94d0b858aa594ce9b455abf57649cc5ea72ffdd54968c62d2487d6da05501d5f"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.8/cunzhi-cli-v0.2.8-macos-aarch64.tar.gz"
      sha256  "7b19b6ea905c816bb33ca803a3a75d26ae6e21361f22f1dc164e1da9ddf2d86b"
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
