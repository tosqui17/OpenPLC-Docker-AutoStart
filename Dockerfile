FROM ubuntu
# Ref https://github.com/thiagoralves/OpenPLC_v3/blob/master/Dockerfile

# Install applications
RUN apt update && apt install git sqlite3 -y && apt clean

# Install OpenPLC_v3
RUN git clone https://github.com/thiagoralves/OpenPLC_v3.git
WORKDIR /OpenPLC_v3
RUN ./install.sh docker


# copy PLC script and database script over
RUN mkdir /OpenPLC_v3/scripts
COPY ./entrypoint.sh /OpenPLC_v3/entrypoint.sh
RUN chmod +x /OpenPLC_v3/entrypoint.sh

EXPOSE 502
EXPOSE 8080
EXPOSE 20000
EXPOSE 43628

ENTRYPOINT ["/OpenPLC_v3/entrypoint.sh"]
