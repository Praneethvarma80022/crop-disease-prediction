# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir numpy streamlit opencv-python-headless tensorflow keras

# Expose the port that Streamlit will run on
EXPOSE 8080
ENV PORT 8080

# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8080", "--server.enableCORS=false"]
