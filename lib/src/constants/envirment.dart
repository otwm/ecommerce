class Environment {
  static const String env = String.fromEnvironment('env', defaultValue: 'dev');
  static const String productApi = String.fromEnvironment('productApi',
      defaultValue: 'https://dummyjson.com');
}
