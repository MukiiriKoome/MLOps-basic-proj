FROM python:3.12.3-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --default-timeout=100 -r requirements.txt

# Copy the rest of the code
COPY . .

# Command to run the model training script
CMD ["python","src/train.ipynb"]

