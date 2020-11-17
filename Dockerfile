FROM python

# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add source code
WORKDIR /app
ADD src .

# Set environment variables
ENV FLASK_APP=index.py

# Run
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]