FROM arm64v8/ubuntu:20.04

RUN mkdir unify_1.4.0
# Copy your application code or files into the image
COPY ./unify_1.4.0_arm64/uic-dev-gui_1.4.0_arm64.deb unify_1.4.0/.
COPY start.sh start.sh

RUN dpkg -i unify_1.4.0/uic-dev-gui_1.4.0_arm64.deb 

EXPOSE 3080 3080
EXPOSE 1337:1337

CMD ["./start.sh"]
