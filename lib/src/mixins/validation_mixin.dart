
mixin ValidationMixin {
  String? validateEmail(value) {
    if (!value!.contains('@')) {
      return 'Invalid email';
    }
  }

  String? validatePassword(value) {
    if (value!.length < 4) {
      return 'Password.length<4';
    }
    return null;
  }
}
