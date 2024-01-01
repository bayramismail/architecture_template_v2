// ignore_for_file: public_member_api_docs

/// Project service path
enum ServicePath {
  usersV1("users"),
  posts("posts"),
  usersV2("v2/users");

  final String value;
  const ServicePath(this.value);

  /// [withQuery] is add query to path
  ///
  /// Example: users/123
  String withQuery(String value) {
    return '${this.value}/$value';
  }
}
