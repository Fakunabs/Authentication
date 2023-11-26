class Validators{
  static String? errorTextName;
  static String? errorTextEmail;
  static String? errorTextPassword;
  static String? errorTextRetypePass;

  static name(String? text){
     errorTextName = (text == null || text.trim().isEmpty) ? 'Vui lòng nhập đầy đủ thông tin' : null;
  }
  
  static email(String? text){
    if (text == null || text.trim().isEmpty){
      errorTextEmail = 'Vui lòng nhập đầy đủ thông tin';
    }
    else{
      errorTextEmail = (!text.contains('@')) ? 'Vui lòng nhập email hợp lệ' : null;
    }
  }

  static password(String? text){
    if ( text == null || text.trim().isEmpty ){
        errorTextPassword =  'Vui lòng nhập đầy đủ thông tin';
      }
    else{
        if ( text.length < 6 ){
          errorTextPassword =  'Mật khẩu cần có ít nhất 6 kí tự';
        }
        else {
          errorTextPassword = (text.contains(RegExp(r'[A-Z]')) && text.contains(RegExp(r'[0-9]')) )?
          null:'Mật khẩu cần ít nhất 1 chữ số và 1 kí tự viết hoa';
        }
    }
  }

  static retypePassword(String? text, String? password){
    if (text == null || text.trim().isEmpty ){
      errorTextRetypePass = 'Vui lòng nhập đầy đủ thông tin';
    }
    else{
      errorTextRetypePass = (text != password)? 'Mật khẩu không khớp' : null;
    }
  }
}