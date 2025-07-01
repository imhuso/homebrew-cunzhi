class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.3.3"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.3/cunzhi-cli-v0.3.3-macos-x86_64.tar.gz"
      sha256  "936852164546926f1a053e03b5bc4bfa92bb8ab69665e36de165c351e13b81c1"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.3.3/cunzhi-cli-v0.3.3-macos-aarch64.tar.gz"
      sha256  "93a732c387852c61e2031923ef93bdf917b8c0ace95d082196beb2318551b6c7"
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
