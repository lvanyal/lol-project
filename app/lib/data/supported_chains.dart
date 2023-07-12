import 'package:flutter/foundation.dart';
import 'package:lol_app/domain/model/chain.dart';

class SupportedChains {
  final Map<int, ChainInfo> _supportedChains = {
    /*1: ChainInfo(
    id: 1,
    name: 'Ethereum',
    chainIcon: 'assets/ic_ethereum.png',
    tokenIcon: 'assets/unit_ether.png',
    tokenName: 'ETH',
  ),
  137: ChainInfo(
    id: 137,
    name: 'Polygon',
    chainIcon: 'assets/ic_polygon.png',
    tokenIcon: 'assets/unit_matic.png',
    tokenName: 'MATIC',
  ),*/
    11155111: ChainInfo(
      id: 11155111,
      name: 'Ethereum Sepolia',
      chainIcon: 'assets/ic_ethereum.png',
      tokenIcon: 'assets/unit_ether.png',
      tokenName: 'ETH',
      rpcUrl: 'https://ethereum-sepolia.blockpi.network/v1/rpc/public',
      valueSteps: ["10", "1", "0.5"],
      isTestnet: true,
    ),
    80001: ChainInfo(
      id: 80001,
      name: 'Polygon Mumbai',
      chainIcon: 'assets/ic_polygon.png',
      tokenIcon: 'assets/unit_matic.png',
      tokenName: 'MATIC',
      rpcUrl: 'https://polygon-mumbai.blockpi.network/v1/rpc/public',
      valueSteps: ["20000", "2000", "1000"],
      isTestnet: true,
    ),
    if (!kReleaseMode)
      31337: ChainInfo(
        id: 31337,
        name: 'Hardhat Localhost',
        chainIcon: 'assets/ic_hardhat.png',
        tokenIcon: 'assets/unit_ether.png',
        tokenName: 'ETH',
        rpcUrl: 'http://127.0.0.1:8545/',
        valueSteps: ["10", "1", "0.5"],
        isTestnet: true,
      ),
  };

  List<ChainInfo> getSupportedChains() {
    return _supportedChains.values.toList();
  }

  ChainInfo getChainById(int id) {
    return _supportedChains[id] ?? ChainInfo.unsupported();
  }

  ChainInfo getDefaultChain() {
    return _supportedChains.values.first;
  }
}