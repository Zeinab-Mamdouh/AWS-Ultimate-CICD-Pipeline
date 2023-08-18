# Base Image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# The Flask application will be listening on
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
