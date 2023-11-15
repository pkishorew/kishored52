FROM      python:3
RUN       mkdir /app
WORKDIR   /app
ADD       payment.ini payment.py requirements.txt rabbitmq.py ./
RUN       pip3 install -r requirements.txt
CMD       ["uwsgi",  "--ini",  "payment.ini" ]
