# Use the official Python image as a base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the Streamlit app files into the container
COPY . .

# Expose the port where Streamlit runs
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "app.py"]
