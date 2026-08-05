# MiniMax H3 ComfyUI RTX 5080 Skill

可重現的 Windows + NVIDIA RTX 5080 16GB MiniMax H3 ComfyUI 工作流。

## 已驗證環境

- Windows
- NVIDIA GeForce RTX 5080
- VRAM 16,303 MiB（約 16GB）
- NVIDIA Driver 576.88
- ComfyUI 0.30.0
- PyTorch 2.8.0+cu129
- 基準：864x480、24 FPS、約 5 秒

其他硬體不保證相同速度或顯存需求。

## 快速開始

1. 安裝 ComfyUI 0.30.0 或更新版本。
2. 依 docs/MODELS.md 下載官方模型，模型不可提交 Git。
3. 載入 custom_nodes/ComfyUI_MiniMaxH3_Director/example_workflows/minimax_h3_director_t2v.json。
4. 執行 powershell -ExecutionPolicy Bypass -File scripts/verify.ps1。

## 放大流程

先生成 864x480，再用 scripts/upscale_video.ps1 輸出 1280x720 或 1920x1080。使用 Lanczos、H.264、AAC，保留音訊。1080p 是放大輸出，不等於原生 1080p 細節。

## 安全發布

不要提交模型、.venv、輸出影片、OAuth、token 或 rclone 設定。

詳見 docs/HARDWARE.md、docs/MODELS.md、docs/UPSCALE.md、docs/TROUBLESHOOTING.md。
