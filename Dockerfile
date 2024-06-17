# Use a slim Python 3.9 image as the base
FROM python:3.12-slim

# Set a working directory for the container
WORKDIR /code

# Copy requirements.txt file
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy your Python application code
COPY ./app /code/app

# Expose port (e.g., 5000 for Flask apps) for container access
# EXPOSE 5000

# Set the default command to run your application (modify as needed)
# CMD [ "python", "your_app.py" ]
CMD ["fastapi", "run", "app/main.py", "--port", "80"]
