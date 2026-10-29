FROM python:3
LABEL maintainer="@Tu5k4rr"
RUN mkdir /CitrixHoneypot
RUN mkdir /CitrixHoneypot/logs
RUN mkdir /CitrixHoneypot/ssl
COPY ./. /CitrixHoneypot
WORKDIR /CitrixHoneypot
RUN python -m pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./CitrixHoneypot.py"]
