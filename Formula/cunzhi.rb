class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.12"


  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.12/cunzhi-cli-v0.2.12-macos-x86_64.tar.gz"
      sha256  "17afe73ec3a6eea9c14c1590f785826d7ca52a329f3b59864059165d0edeba23"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v0.2.12/cunzhi-cli-v0.2.12-macos-aarch64.tar.gz"
      sha256  "d7b75621c5c34879c10aeb89d1c23f1e7720b267008e4dc836a08488974d7b93"
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
