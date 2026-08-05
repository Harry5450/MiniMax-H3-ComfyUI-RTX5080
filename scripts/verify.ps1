 = "Stop"
 = Split-Path -Parent 
python -c "import torch; print(torch.__version__); print(torch.cuda.is_available()); print(torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'none')"
if (-not (Test-Path "\custom_nodes\ComfyUI_MiniMaxH3_Director\example_workflows\minimax_h3_director_t2v.json")) { throw "Workflow missing" }
Write-Host "Workflow present"
