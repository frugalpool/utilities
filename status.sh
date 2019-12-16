clear

a0=`show.sh -f createAddress0.output -t address`
a1=`show.sh -f createAddress1.output -t address`

#echo $(cat nightly-genesis.txt)
#echo $(cat stake_pool.id)


./jcli rest v0 node stats get


echo -e "\n = = = = = "
echo -e "\n 1. $a0 \n"
./jcli rest v0 account get $a0

echo -e "\n = = = = = "
echo -e "\n 2.  $a1 \n"
./jcli rest v0 account get $a0


#./jcli rest v0 stake get
#./jcli rest v0 stake-pool get $(cat stake_pool.id)


#./jcli rest v0 stake get  | grep -A 1 $(cat stake_pool.id)

echo -e "\n = = = = = \n"
echo -e "leader logs \n"
./jcli rest v0 leaders logs get

#curl -X POST https://faucet.nightly.jormungandr-testnet.iohkdev.io/send-money/$a0


ntpstat
#pgrep jormungandr

