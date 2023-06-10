# mediaconv_docker - works GREAT, but updates are on hold until the _CL version is in prod

Dockerized version of Python FFmpeg media converter

## Prerequisites

Before running this application, ensure that you have the following prerequisites installed on your machine:

- [Docker](https://www.docker.com/get-started): Ensure Docker is installed and running on your system.
- In Windows, docker-compose should be included with the standard install of Docker.
- In Linux, you may need to install docker-compose separately using your distribution's package manager.

## Setup

To set up the application, follow these steps:

1. Clone this repository to your local machine.

2. In the repository directory, there should two folders: `convert_media` and `converted_media`. These folders will be used to store the video files to be converted and the converted `.mp4` files, respectively.

3. Place the video files you want to convert into the `convert_media` folder.

## Usage

To convert the video files using Docker Compose, follow these steps:

1. Open a terminal or command prompt and navigate to the cloned repository directory.

2. Run the following command to start the Docker containers:

   ```shell
   docker-compose up
   ```

   Alternately, you can run 'detached' in order to avoid tying up your terminal while the conversion is running.

      ```shell
   docker-compose up -d
   ```

3. The application will automatically convert the video files in the `convert_media` folder to the `.mp4` format using FFmpeg. The converted files will be placed in the `converted_media` folder.

4. Once the conversion process is complete, you can access the converted files from the `converted_media` folder.

5. To stop the Docker containers and terminate the application, press `Ctrl + C` in the terminal or command prompt.

## Notes

- If you encounter any issues during the conversion process, check the log file `conversion_log_<timestamp>.log` located in the `converted_media` folder for error messages and conversion details.

- Feel free to modify the `Dockerfile`, `docker-compose.yml`, and `main.py` files to customize the application according to your requirements.

- For advanced usage and customization, refer to the official Docker and Docker Compose documentation.
