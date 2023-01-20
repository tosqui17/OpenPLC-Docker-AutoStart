# Simplified OpenPLC V3 Docker Autostart

## Steps
1. Build Docker image
    ```
    docker build -t openplc:v3 .
    ```
2.  Run Docker image
    ```
    docker run -it --rm --privileged -p 8080:8080 -p 502:502 openplc:v3
    ```
3.  Username === Password
    ```
    openplc
    ```
