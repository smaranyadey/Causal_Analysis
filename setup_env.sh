#!/bin/bash

echo "🔧 Setting up your virtual environment for Causal Analysis..."

# 1. Create a virtual environment in the .venv directory
python3 -m venv .venv

# 2. Activate the virtual environment
source .venv/bin/activate

# 3. Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# 4. Install required packages (assumes you have a requirements.txt file)
if [ -f "requirements.txt" ]; then
    echo "📦 Installing packages from requirements.txt..."
    pip install -r requirements.txt
else
    echo "⚠️  No requirements.txt found. Skipping package installation."
fi

# 5. Register the Jupyter kernel with a friendly name
echo "🧠 Registering Jupyter kernel as 'Python (causal-env)'..."
pip install ipykernel
python -m ipykernel install --user --name=causal-env --display-name "Python (causal-env)"

echo "✅ Setup complete! Activate your env with: source .venv/bin/activate"
