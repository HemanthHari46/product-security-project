
# Start from the official Golang image
FROM golang:1.20

# Set working directory inside the container
WORKDIR /app

# Copy source code
COPY . .

# Build the Go app
RUN go build -o datetime-app

# Command to run the app
CMD ["./datetime-app"]
