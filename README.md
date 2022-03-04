# Crypto-Stocks-Dashboard
This is a Dashboard that displays the current Top 10 Cryptostocks being traded.

![cryptostocks](https://user-images.githubusercontent.com/25004712/156851560-9a53a3cd-7d40-485d-b947-beb0e1e397d0.png)

USAGE STEPS:
1) Navigate to the root folder that houses the Dockerfile and run this command below:
   sudo docker build -t nosaugowe/crypto .

2) sudo docker run -d --name crypto-board nosaugowe/crypto

![Screenshot from 2022-03-04 16-56-07](https://user-images.githubusercontent.com/25004712/156853573-7b62c08f-0c01-4e86-9f16-c1f31ae92ded.png)

3) locate the Container ID from the already running Container. (As shown above)

4) Run this command: 
docker cp <CONTAINERID>:/opt/crypto/scripts/cryptostocks.png <Desired-Relative-Path-On-Local-Machine>

