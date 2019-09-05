# kafkaWithVagrant

* Kafkaをvagrant上で動かすことを目標としたリポジトリ。
* そもそもの目的はSSM向け。

## VBoxSpecs
本リポジトリではVirtualBoxをproviderとした仮想マシンを作ります。

|Items|Contents|Remarks|
|----|----|----|
|OS|CentOS7|公式イメージ|
|CPUs|2core|Vagrantfileにて記載|
|RAM|2048MB|Vagrantfileにて記載|

## Provisioning
`./provisioning_init.sh` をVagrantfileから実行させることで環境整備していきます。

## Execute Kafka
```
bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties
```

## Creating topic
```
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
```

## Confirming topic
```
bin/kafka-topics.sh --list --zookeeper localhost:2181
```

## Send message to test topic
```
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
>hi this is from vagrant
```

## Confirming message 
```
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
```

## References
* https://qiita.com/kiura30/items/df036b927c26f58122e8