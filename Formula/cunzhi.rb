class Cunzhi < Formula
  desc     "智能代码审查 MCP 工具集（含“寸止”服务器与“等一下”弹窗）"
  homepage "https://github.com/imhuso/cunzhi"
  license  "MIT"
  version  "0.2.6"

  # ------- 二进制包（非源码） -------
  on_macos do
    on_intel do
      url     "https://github.com/imhuso/cunzhi/releases/download/v#{version}/cunzhi-cli-v#{version}-macos-x86_64.tar.gz"
      sha256  "011d7eea008097c9ec35bed624d53f73c4fb2658cf04af096a39f72f6c95fcb5"
    end

    on_arm do
      url     "https://github.com/imhuso/cunzhi/releases/download/v#{version}/cunzhi-cli-v#{version}-macos-aarch64.tar.gz"
      sha256  "61a67c575a9c625ae7f411e0ed27d0e793947e211f5ac053a60e38914cb5633f"
    end

    # 如需 Homebrew 识别为 bottle，可保留/扩充下方块；
    # 没有正式发布的 macOS 26 标签时，仍会 fallback 到最接近的版本。
    bottle do
      root_url "https://github.com/imhuso/cunzhi/releases/download/v#{version}"

      on_intel do
        sha256 cellar: :any_skip_relocation, sonoma:        "011d7eea008097c9ec35bed624d53f73c4fb2658cf04af096a39f72f6c95fcb5"
      end
      on_arm do
        sha256 cellar: :any_skip_relocation, arm64_sonoma:  "61a67c575a9c625ae7f411e0ed27d0e793947e211f5ac053a60e38914cb5633f"
      end
      # 若想在未来系统自动复用，可加 `or_later: true`
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
