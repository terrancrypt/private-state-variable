## Smart Contract Security #4: Private State Variable

### Command

Sử dụng lệnh command để chạy các tính năng như trong video đã đề cập.

1. Compile
```shell
$ forge compile
```

2. Chạy mạng Anvil Chain (local)

```shell
$ anvil
```

3. Mở một terminal mới, chạy lệnh deploy lên mạng Anvil Chain

```shell
$ forge script script/DeployPasswordStore.s.sol:DeployPasswordStore --rpc-url http://127.0.0.1:8545 --private-key <private-key> --broadcast
```

4. Để xem storage của contract PasswordStore đã deploy, chạy command `cast storage`
```shell
$ cast storage <địa-chỉ-contract> <vị-trí-muốn-xem> --rpc-url http://127.0.0.1:8545
```

5. Để xem dữ liệu dưới dạng string chạy command `cast parse-bytes32-string`
```shell
$ cast parse-bytes32-string <hex-data>
```


