# Use an official Python runtime as a parent image
FROM python:2.7-slim
LABEL version="1.0" 
LABEL maintainer="Daniel Akindun <danieladebayo2004@gmail.com>"
LABEL description="Python project with Flask and Redish. Lab Week 11"
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
ENV NAME Daniel
# Run app.py when the container launches
CMD ["python", "app.py"]