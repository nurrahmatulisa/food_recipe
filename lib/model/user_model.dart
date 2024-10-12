class UserModel {
  String? uid;
  String? email;
  String? Name;
  String? Password;
  String? ConfirmPassword;

  UserModel({this.uid, this.email, this.Name, 
  this.Password, this.ConfirmPassword});

  // menerima data dari server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      Name: map['Name'],
      Password: map['Password'],
      ConfirmPassword:  map['ConfirmPassword']
    );
  }

  // mengirim data ke server kita
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'Name':Name,
      'Password': Password,
      'ConfirmPasword' : ConfirmPassword,
    };
  }
}
