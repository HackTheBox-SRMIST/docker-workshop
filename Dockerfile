FROM python:3.13

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN chmod +x socat

CMD ["./socat", "TCP-LISTEN:1337,reuseaddr,fork", "EXEC:'python chall.py',pty,stderr"]
