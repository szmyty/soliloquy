# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy the project files
COPY . .

# Install Poetry & dependencies
RUN pip install poetry && poetry install --no-dev

# Set the default command to run the CLI tool
ENTRYPOINT ["poetry", "run", "chainlit", "run", "soliloquy/chat.py"]
