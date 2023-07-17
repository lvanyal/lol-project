final class BlockchainMeme {
  final String id;
  final String uri;

  BlockchainMeme({required this.id, required this.uri});

  @override
  String toString() {
    return 'BlockchainMeme(id: $id, uri: $uri)';
  }
}
