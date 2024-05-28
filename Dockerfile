FROM python:3.9

RUN mkdir /app

WORKDIR /app

RUN git clone https://cdm-project.com/TPD94/CDRM-Project.git .
RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "/usr/local/bin/python3", "-m", "flask", "--app", "main.py", "run", "--host", "0.0.0.0" ]
