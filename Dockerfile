FROM python:3.13
WORKDIR /app
ENV FLASK_APP=main.py \
  FLASK_RUN_PORT=5000
EXPOSE 5000

RUN git clone https://github.com/TPD94/CDRM-Project.git .
RUN pip install -r requirements.txt

CMD [ "/usr/local/bin/flask", "run" ]
