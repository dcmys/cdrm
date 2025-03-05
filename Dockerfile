FROM python:3.13
WORKDIR /app

RUN git clone https://github.com/TPD94/CDRM-Project.git .
RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "/usr/local/bin/flask", "run" ]
