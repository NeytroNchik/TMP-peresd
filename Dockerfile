FROM ubuntu:latest

LABEL author="Akhmedyarov Andrey"

RUN apt-get update &&

apt install -y gcc g++

WORKDIR /MyProj_231-329_Akhmedyarov

COPY myProgram.cpp /MyProj_231-329_Akhmedyarov/myProgram.cpp

RUN g++ myProgram.cpp -o myProgram

CMD ["./myProgram", "Andrey"]
