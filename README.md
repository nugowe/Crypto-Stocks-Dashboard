# Crypto-Stocks-Dashboard
This is a Dashboard that displays the current Top 10 Cryptostocks being traded.

![cryptostocks](https://user-images.githubusercontent.com/25004712/156851560-9a53a3cd-7d40-485d-b947-beb0e1e397d0.png)

USAGE STEPS:

git clone https://github.com/nugowe/Crypto-Stocks-Dashboard.git

Navigate to the root folder and run the following commands:
  
docker build -t nosaugowe/crypto .

docker run -d --name crypto-board nosaugowe/crypto

docker cp ${Cryto-ContainerID-variable}:/opt/crypto/scripts/cryptostocks.png ${desired-relative-path-on-local-machine}

See Screenshot breakdown:

![Screenshot from 2022-03-07 09-52-24](https://user-images.githubusercontent.com/25004712/157072436-2d766868-02c6-4176-9428-843e67e8b4ed.png)
![Screenshot from 2022-03-07 10-01-16](https://user-images.githubusercontent.com/25004712/157072441-b7a3a836-0ce2-43a2-a405-9960d97a7ddc.png)
![Screenshot from 2022-03-07 10-01-46](https://user-images.githubusercontent.com/25004712/157072443-cbb23fdc-ddaa-471b-9d3d-e218ea2b6fda.png)
![Screenshot from 2022-03-07 10-09-13](https://user-images.githubusercontent.com/25004712/157072451-5488f8d5-8dd0-4570-9527-6b0cbfdebbda.png)
