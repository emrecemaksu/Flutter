class SharedNotInitilazeException implements Exception{
  @override
  String toString() {
    return 'Your preferences has not initilazed.';
  }
}