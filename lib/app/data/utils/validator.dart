part of utils;

class Validator {
   get username => ValidationBuilder()
      .maxLength(50)
      .required('Vui lòng nhập tài khoản của bạn')
      .build();

  get password => ValidationBuilder()
      .maxLength(50, 'Mật khẩu tối đa 50 ký tự')
      .minLength(8, 'Mật khẩu tối thiểu 8 ký tự')
      .required('Vui lòng nhập mật khẩu')
      .regExp(RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$'),
          'Mật khẩu phải bao gồm cả chữ cái và chữ số')
      .build();

  get name => ValidationBuilder()
      .maxLength(100, 'Họ và tên tối đa 100 ký tự')
      .required('Vui lòng nhập họ tên của bạn')
      .build();

  get phone => ValidationBuilder()
      .phone('Vui lòng nhập đúng định dạng số điện thoại')
      .required('Vui lòng nhập số điện thoại của bạn')
      .build();
}
