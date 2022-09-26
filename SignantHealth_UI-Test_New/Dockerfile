FROM python:3

COPY . /SignantHealth_UI-Test_New
WORKDIR /SignantHealth_UI-Test_New

RUN set -eux; apt-get update; apt-get install -y libnss3 --no-install-recommends ca-certificates p11-kit; rm -rf /var/lib/apt/lists/*

RUN pip3 install -r requirements.txt

ENV browser Chrome

CMD "robot" "-i" "all" "-v" "url:http://localhost:8080" "-v" "browser:"${browser} "TestSuites/"
