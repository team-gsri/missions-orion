FROM python:alpine
RUN pip3 install sqflint
COPY * /src/
WORKDIR /src
CMD ["--exit", "e", "--directory", "/src"]
ENTRYPOINT ["sqflint"]