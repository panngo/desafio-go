FROM scratch
WORKDIR /app
COPY main /app/main
CMD ["/app/main"]