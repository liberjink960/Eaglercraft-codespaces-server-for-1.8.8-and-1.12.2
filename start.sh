#!/bin/bash

# Velocity uses Java 21
cd velocity
java -Xms512M -Xmx1G -jar velocity.jar &
cd ..

sleep 5

# Paper 1.8.8 uses Java 8
cd backend-1.8.8
/usr/lib/jvm/java-8-openjdk-amd64/bin/java -Xms1G -Xmx2G -jar paper-1.8.8.jar nogui &
cd ..

sleep 5

# Paper 1.12.2 uses Java 8
cd backend-1.12.2
/usr/lib/jvm/java-8-openjdk-amd64/bin/java -Xms1G -Xmx2G -jar paper-1.12.2.jar nogui &
cd ..

wait
