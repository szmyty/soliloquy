# 🗣️ soliloquy – Chat Privately with PDFs Using a Local LLM

Soliloquy lets you **chat with and summarize PDFs** using a **local Ollama instance** and **Chainlit**. All processing happens **locally**, ensuring privacy and control over your data.

## 🚀 Installation

### **Using pip**
```sh
pip install soliloquy
```

### **Using Docker**
```sh
docker run -p 8000:8000 szmyty/soliloquy
```

### **Using GitHub**
```sh
pip install git+https://github.com/szmyty/soliloquy.git
```

## 🛠 Usage

```python
from soliloquy import chat, summarize

summary = summarize("path/to/document.pdf")
print(summary)

response = chat("What is this document about?")
print(response)
```

## ⚙️ Local Development

### 1️⃣ Install Dependencies
```sh
pyenv install 3.11.6
pyenv local 3.11.6
poetry install
```

### 2️⃣ Start Ollama
```sh
./scripts/start_ollama.sh
```

### 3️⃣ Run the App
```sh
./scripts/run.sh
```

## 🧑‍💻 Contributing
See [`CONTRIBUTING.md`](./CONTRIBUTING.md).

## 📜 License
Distributed under the MIT License.
