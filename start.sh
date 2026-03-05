#!/bin/bash

cd velocity
java -Xms512M -Xmx1G -jar velocity.jar &
cd ..

sleep 5

cd backend-1.8.8
java -Xms1G -Xmx2G -jar paper-1.8.8.jar nogui &
cd ..

sleep 5

cd backend-1.12.2
java -Xms1G -Xmx2G -jar paper-1.12.2.jar nogui &
cd ..

wait
