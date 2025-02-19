# Base image
FROM python:3.11

# Set working directory
WORKDIR /app

# Install dependencies
COPY pyproject.toml poetry.lock ./
RUN pip install poetry && poetry install --no-dev

# Copy app files
COPY soliloquy/ soliloquy/

# Expose the port and run the app
CMD ["poetry", "run", "chainlit", "run", "soliloquy/chat.py"]
