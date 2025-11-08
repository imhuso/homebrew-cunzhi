class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.4.0"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.4.0/cunzhi-cli-v0.4.0-macos-x86_64.tar.gz"
      sha256  "ef7afd1f0232d2cf7d3bc13ca959d4851849dd0a833d433cc7ef2c6a09d86259"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.4.0/cunzhi-cli-v0.4.0-macos-aarch64.tar.gz"
      sha256  "355ffac332d811960a15e1477814d90ea77eb7262bba5d8258c8beaa6b65ff16"
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
