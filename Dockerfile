FROM python:slim-buster

# Install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Set the working directory inside the container
WORKDIR /app

# Create the "convert_media" and "converted_media" directories
RUN mkdir convert_media converted_media

# Copy the Python script and the "convert_media" folder into the container
COPY . /app

# Mount the "converted_media" directory as a volume
VOLUME /app/converted_media

# Install Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# Define the command to execute the Python script
CMD ["python", "main.py"]
