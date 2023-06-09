FROM golang:1.20-alpine

WORKDIR /app


RUN go mod init github.com/TheDevopsSchool/testing-the-go-app-app-1

RUN go mod tidy

RUN go mod download && go mod verify

COPY /main.go .

RUN go build main.go

EXPOSE 8080

RUN chmod +x ./main.go

CMD ["./main"]