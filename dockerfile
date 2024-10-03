FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Make the run.sh file executable
RUN chmod +x run.sh

# Expose the port
EXPOSE 5000

# Run the command to start the bot
CMD ["./run.sh"]
