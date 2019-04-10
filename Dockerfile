FROM python:alpine3.7
# Update
RUN python -m ensurepip
RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf
# Install app dependencies
RUN pip install flask

# Bundle app source
COPY simple_python_app.py /src/simple_python_app.py

EXPOSE  8000

CMD ["python", "/src/simple_python_app.py", "-p 8000"]
