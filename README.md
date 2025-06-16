# 寸止 Homebrew Tap

[![macOS](https://img.shields.io/badge/platform-macOS-blue.svg)](https://github.com/imhuso/homebrew-cunzhi)

这是 [寸止 MCP 工具集](https://github.com/imhuso/cunzhi) 的 Homebrew tap，仅供开发者使用。

## ⚠️ 注意事项

- **仅支持 macOS**
- **不推荐普通用户使用**
- 推荐使用 [官方安装方式](https://github.com/imhuso/cunzhi#安装)

## 🛠 开发者安装

如果您是开发者且需要通过 Homebrew 安装：

```bash
# 添加 tap
brew tap imhuso/cunzhi

# 安装工具集（需要较长编译时间）
brew install cunzhi
```

## 📦 包含的工具

- **寸止** - MCP 服务器
- **等一下** - 弹窗界面

## 🔧 MCP 配置

```json
{
  "mcpServers": {
    "寸止": {
      "command": "寸止"
    }
  }
}
```

## 🔄 维护

```bash
# 更新
brew upgrade cunzhi

# 卸载
brew uninstall cunzhi
brew untap imhuso/cunzhi
```

## 📚 相关链接

- [主项目仓库](https://github.com/imhuso/cunzhi)
- [官方安装文档](https://github.com/imhuso/cunzhi#安装)
- [问题反馈](https://github.com/imhuso/cunzhi/issues)
