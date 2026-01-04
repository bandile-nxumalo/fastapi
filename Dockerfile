FROM python:3.12-slim-bookworm

#Set up the working directory in the container
WORKDIR /app

#Copy the dependencies file
COPY requirements.txt ./

#Install all the dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy the rest of the application
COPY . .

#Run the app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]