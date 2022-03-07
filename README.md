# Crypto-Stocks-Dashboard
This is a Dashboard that displays the current Top 10 Cryptostocks being traded.

![cryptostocks](https://user-images.githubusercontent.com/25004712/156851560-9a53a3cd-7d40-485d-b947-beb0e1e397d0.png)

USAGE STEPS:

Navigate to the root folder and run the following commands:
   
docker build -t nosaugowe/crypto .

docker run -d --name crypto-board nosaugowe/crypto

docker cp ${Cryto-ContainerID-variable}:/opt/crypto/scripts/cryptostocks.png ${desired-relative-path-on-local-machine}

See Screenshot breakdown:

![Screenshot from 2022-03-04 16-56-07](https://user-images.githubusercontent.com/25004712/156853573-7b62c08f-0c01-4e86-9f16-c1f31ae92ded.png)
