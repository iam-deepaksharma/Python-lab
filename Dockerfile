# ✅ Use official Python base image
FROM python:3.11-slim

# ✅ Set working directory
WORKDIR /app

# ✅ Copy application files
COPY . /app

# ✅ Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ✅ Run the application
CMD ["python", "app.py"]

