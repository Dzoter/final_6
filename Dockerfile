FROM golang:1.23

WORKDIR /app

# Копируем проект в контейнер
COPY . .

# Устанавливаем зависимости
RUN go mod tidy

# Сборка приложения с именем final_6
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main.go

# Указываем исполняемый файл
CMD ["./main.go"]