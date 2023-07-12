import 'package:flutter/foundation.dart';

class ChainInfo {
  final int id;
  final String name;
  final String chainIcon;
  final String tokenIcon;
  final String tokenName;
  final String rpcUrl;
  final List<String> valueSteps;
  final bool isTestnet;

  ChainInfo({
    required this.id,
    required this.name,
    required this.chainIcon,
    required this.tokenIcon,
    required this.tokenName,
    required this.rpcUrl,
    required this.valueSteps,
    this.isTestnet = false,
  });

  ChainInfo.unsupported()
      : id = -1,
        name = "Unsupported chain",
        chainIcon = "assets/ic_unsupported.png",
        tokenIcon = "assets/ic_unsupported.png",
        tokenName = "???",
        rpcUrl = "https://dummy",
        valueSteps = ["3", "2", "1"],
        isTestnet = false;

  bool isLocalhost() {
    return id == 31337;
  }

  @override
  String toString() {
    return 'ChainInfo{id: $id, name: $name, chainIcon: $chainIcon, tokenIcon: $tokenIcon, tokenName: $tokenName, rpcUrl: $rpcUrl, valueSteps: $valueSteps, isTestnet: $isTestnet}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChainInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          chainIcon == other.chainIcon &&
          tokenIcon == other.tokenIcon &&
          tokenName == other.tokenName &&
          rpcUrl == other.rpcUrl &&
          listEquals(valueSteps, other.valueSteps) &&
          isTestnet == other.isTestnet;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      chainIcon.hashCode ^
      tokenIcon.hashCode ^
      tokenName.hashCode ^
      rpcUrl.hashCode ^
      valueSteps.hashCode ^
      isTestnet.hashCode;
}
