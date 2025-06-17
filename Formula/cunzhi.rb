
class Cunzhi < Formula
  desc "智能代码审查MCP工具集 - 包含寸止MCP服务器和等一下弹窗界面"
  homepage "https://github.com/imhuso/cunzhi"
  license "MIT"
  version "0.2.6"

  # 仅支持 macOS
  depends_on :macos

  # 根据系统架构选择对应的预编译二进制
  if Hardware::CPU.intel?
    url "https://github.com/imhuso/cunzhi/releases/download/v0.2.6/cunzhi-cli-v0.2.6-macos-x86_64.tar.gz"
    sha256 "011d7eea008097c9ec35bed624d53f73c4fb2658cf04af096a39f72f6c95fcb5"
  elsif Hardware::CPU.arm?
    url "https://github.com/imhuso/cunzhi/releases/download/v0.2.6/cunzhi-cli-v0.2.6-macos-aarch64.tar.gz"
    sha256 "61a67c575a9c625ae7f411e0ed27d0e793947e211f5ac053a60e38914cb5633f"
  end

  # 明确声明不需要编译，这是预编译二进制
  bottle :unneeded

  def install
    # 直接安装预编译的二进制文件
    bin.install "寸止"
    bin.install "等一下"
  end

  test do
    # 测试 CLI 工具是否正确安装
    assert_match "寸止", shell_output("#{bin}/寸止 --version 2>&1", 0)
    assert_match "寸止", shell_output("#{bin}/等一下 --version 2>&1", 0)
  end

  def caveats
    <<~EOS
      🎉 寸止 MCP 工具集安装完成！

      📋 使用方法：
        • MCP 服务器：寸止
        • 弹窗界面：等一下

      🔧 MCP 客户端配置：
        {
          "mcpServers": {
            "寸止": {
              "command": "寸止"
            }
          }
        }

      📚 更多信息：https://github.com/imhuso/cunzhi
    EOS
  end
end
