FROM python:3

WORKDIR /usr/src/app

COPY requirements-dev.txt ./
RUN pip install --no-cache-dir -r requirements-dev.txt

COPY . .

EXPOSE 5000

CMD [ "python", "./launch_markov_app.py" ]