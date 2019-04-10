FROM python:alpine3.7
# Update
RUN python -m ensurepip
RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# Bundle app source
COPY simple_python_app.py /src/simple_python_app.py

CMD ["python", "/src/simple_python_app.py"]
