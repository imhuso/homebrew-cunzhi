class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.7"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.7/cunzhi-cli-v0.2.7-macos-x86_64.tar.gz"
      sha256  "e33965697a91c2a939b1accd46a3a11c42107aa01bc02284bbe04047a8aa0727"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.7/cunzhi-cli-v0.2.7-macos-aarch64.tar.gz"
      sha256  "b3c493f492fdd4e56115dd7af2d6b4e1b4134a1835bd46427fd0b2d650bd40e9"
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
