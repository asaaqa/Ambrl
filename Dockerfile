FROM asaaqa/Codex:slim-buster

RUN git clone https://github.com/asaaqa/Codex.git /root/usercodex

WORKDIR /root/usercodex

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/usercodex/bin:$PATH"

CMD ["python3","-m","usercodex"]
