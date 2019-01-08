
class User {
  String _email;
  String _name;
  String _password;
  String _phone;

  User(this._email, this._name, this._password, this._phone);

  User.map(dynamic obj) {
    this._email = obj['email'];
    this._name = obj['name'];
    this._password = obj['password'];
    this._phone = obj['phone'];
  }

  String get email => _email;
  String get name => _name;
  String get password => _password;
  String get phone => _phone;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_email != null) {
      map['email'] = _email;
    }
    map['name'] = _name;
    map['password'] = _password;
    map['phone'] = _phone;
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    this._email = map['email'];
    this._name = map['name'];
    this._password = map['password'];
    this._phone = map['phone'];
  }
}