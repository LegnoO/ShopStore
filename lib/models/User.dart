class User {
  String username;
  String password;
  String refreshToken;

  User(this.username, this.password, this.refreshToken);
  
  @override
  String toString() {
    return '{username: $username, password: $password, refreshToken: $refreshToken}';
  }
}
