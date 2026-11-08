/// Foydalanuvchilarni vaqtincha xotirada saqlaydi.
/// Ilova yopilsa ma'lumotlar o'chadi (keyinchalik bazaga ulash mumkin).
class AuthService {
  static final Map<String, String> _users = {};

  /// Ro'yxatdan o'tkazadi. Login band bo'lsa false qaytaradi.
  static bool register(String login, String password) {
    if (_users.containsKey(login)) return false;
    _users[login] = password;
    return true;
  }

  /// Login va parol to'g'ri bo'lsa true qaytaradi.
  static bool login(String login, String password) {
    return _users[login] == password;
  }
}
