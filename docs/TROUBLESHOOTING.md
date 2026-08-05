# Troubleshooting

- 節點不存在：確認 ComfyUI 0.30.0+ 並重新啟動。
- 模型不存在：檢查檔名與 models 子目錄。
- OOM：降低解析度、幀數或 steps。
- CUDA：確認 torch.cuda.is_available()。
- Hugging Face lock：先停止重複下載程序，再清理殘留 lock。
- Windows：模型快取使用本機 NTFS，避免 OneDrive/NAS。
