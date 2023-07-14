final class Meme {
  final String id;
  final String uri;

  Meme({required this.id, required this.uri});

  @override
  String toString() {
    return 'Meme(id: $id, uri: $uri)';
  }
}
