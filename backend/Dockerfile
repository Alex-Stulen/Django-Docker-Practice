FROM python:3.11.1-alpine
LABEL maintainer="stuleo"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /web/djproject/backend/

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install -r ./requirements.txt

ENV PATH="/web/djproject/backend/venv/bin:$PATH"

COPY entrypoint.sh /web/djproject/backend/entrypoint.sh
RUN chmod +x /web/djproject/backend/entrypoint.sh

COPY . .

RUN apk add bash

EXPOSE 8000

ENTRYPOINT ["bash", "/web/djproject/backend/entrypoint.sh"]
