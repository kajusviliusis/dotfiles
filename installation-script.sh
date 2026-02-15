set -e

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# -----------------------------
# Tools
# -----------------------------
echo "Installing build-essential, cmake, git..."
sudo apt install -y build-essential cmake git curl wget maven

# -----------------------------
# C++ / GCC / Clang
# -----------------------------
echo "Installing GCC and Clang..."
sudo apt install -y gcc g++ clang

# -----------------------------
# Java (OpenJDK)
# -----------------------------
echo "Installing OpenJDK 17..."
sudo apt install -y openjdk-17-jdk

# -----------------------------
# .NET / C#
# -----------------------------
echo "Installing .NET SDK 8..."
sudo apt install -y dotnet-sdk-8.0

# -----------------------------
# Docker + Docker Compose
# -----------------------------
echo "Installing Docker..."
sudo apt install -y docker.io docker-compose
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER

# -----------------------------
# Node.js + npm
# -----------------------------
echo "Installing Node.js (20.x) and npm..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs


# -----------------------------
# Finish
# -----------------------------
echo "--------------------------------"
echo "Finished."

