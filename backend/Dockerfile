FROM python:3.11.1-alpine
LABEL maintainer="stuleo"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /web/djproject

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install -r ./requirements.txt

ENV PATH="/web/djproject/venv/bin:$PATH"

COPY entrypoint.sh /web/djproject/entrypoint.sh
RUN chmod +x /web/djproject/entrypoint.sh

COPY . .

RUN apk add bash

EXPOSE 8000

ENTRYPOINT ["bash", "/web/djproject/entrypoint.sh"]
