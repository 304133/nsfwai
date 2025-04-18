import os
import subprocess

# モデルとフォルダの確認
model_path = os.path.join("models", "Stable-diffusion")
if not os.path.exists(model_path):
    os.makedirs(model_path)
    print(f"[INFO] モデルフォルダを作成しました: {model_path}")

# Stable Diffusion Web UI を起動
print("[INFO] Stable Diffusion WebUI を起動中...")
subprocess.call(["python", "webui.py"])

