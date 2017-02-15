FROM java:7
WORKDIR /home/root/helloworldjava
RUN ls
RUN mkdir bin
COPY src /home/root/helloworldjava/src
RUN javac -d bin src/HelloWorld.java
RUN apt-get install -y  wget
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

