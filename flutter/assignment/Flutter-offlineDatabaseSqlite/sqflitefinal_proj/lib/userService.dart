import 'package:sqflitefinal_proj/repository.dart';
import 'package:sqflitefinal_proj/usermodel.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  saveuser(UserModel userModel) async {
    return await _repository.insertdata("USER", userModel.UserModelMap());
  }

  readuser() async {
    return await _repository.readalldata("USER");
  }

  udateuser(UserModel userModel) async {
    return await _repository.updatedata("USER", userModel.UserModelMap());
  }
  deleteuser(userid) async {
    return await _repository.deleteData("USER", userid);
  }
}
