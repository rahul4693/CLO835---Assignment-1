FROM ubuntu:20.04

# Update and install all required packages in one RUN layer
RUN apt-get update -y && \
    apt-get install -y python3-pip mysql-client iputils-ping

# Copy app code
COPY . /app
WORKDIR /app

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port and start app
EXPOSE 8080
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
