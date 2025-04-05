import 'dart:async';

import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/payment_card.dart';

validateEmptyField(String value, String message) {
  if ((value.trim()).isEmpty) {
    return message;
  } else {
    return "";
  }
}

validateCardNumber(String? value) {
  String? validateCardNum = CardUtils().validateCardNum(value) ?? "";
  if ((validateCardNum.trim().isNotEmpty)) {
    return validateCardNum;
  } else {
    return "";
  }
}

validateExpirationDate(value) {
  String? validateCardDate = CardUtils().validateDate(value);
  return validateCardDate;
}

validateWithFixLength(
  String value,
  int length,
  String emptyMsg,
  String invalidMsg,
) {
  if (value.trim().isEmpty) {
    return emptyMsg;
  } else if (value.trim().length != length) {
    return invalidMsg;
  } else {
    return "";
  }
}

passwordValidate(value) {
  if (value.trim().isEmpty) {
    return languages.enterPass;
  } else if (value.trim().length < 6) {
    return languages.passShortMsg;
  } else {
    return "";
  }
}

validateOldPassword(String value) {
  if (value.trim().isEmpty) {
    return languages.enterOldPass;
  } else if (value.trim().length < 6) {
    return languages.passShortMsg;
  } else {
    return "";
  }
}

validateNewPassword(String value) {
  if (value.trim().isEmpty) {
    return languages.enterNewPass;
  } else if (value.trim().length < 6) {
    return languages.passShortMsg;
  } else {
    return "";
  }
}

validateConfPassword(String value, String newPass) {
  if (value.trim().isEmpty) {
    return languages.enterConfPass;
  } else if (0 != newPass.trim().compareTo(value)) {
    return languages.confPassNotMatchWithNew;
  } else {
    return "";
  }
}

fullNameValidate(value) {
  if (value.isEmpty) {
    return languages.enterFullName;
  }
  return "";
}

mobileNumberValidate(value) {
  if (value.isEmpty) {
    return languages.enterMobileNumber;
  }
  return "";
}

confirmPasswordValidate(value, compareValue) {
  if (value.isEmpty) {
    return languages.enterConfPass;
  } else if (value != compareValue) {
    return languages.confPassNotMatch;
  }
  return "";
}

String validateEmailOrNumber(String value) {
  // Regex pattern for validating email
  String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  // Regex pattern for validating numeric strings (phone numbers)
  String numberPattern =
      r'^\+?[0-9]+$'; // Allows optional '+' followed by digits

  if (value.isEmpty) {
    return "Enter Email Or Number"; // Update this message as needed
  } else if (!RegExp(emailPattern).hasMatch(value) &&
      !RegExp(numberPattern).hasMatch(value)) {
    return "Enter Email Or Number"; // Update this message as needed
  }
  return "";
}

validateCourierGoods(
  dynamic value,
  double goodsItem,
  String emptyMsg,
  String invalidMsg,
) {
  if (value.trim().isEmpty) {
    return emptyMsg;
  } else if (value.trim().isNotEmpty &&
      double.parse(value.trim()) > goodsItem) {
    return invalidMsg;
  }
  return "";
}

class Validator {
  BuildContext context;

  Validator(this.context);

  validateEmptyField(String message) {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        if ((value.trim()).isEmpty) {
          sink.addError(message);
        } else {
          sink.add(value);
        }
      },
    );
  }

  validateEmptyFieldWithLength(
    int length,
    String emptyMessage,
    String lengthMessage,
  ) {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        if (value.trim().isEmpty) {
          sink.addError(emptyMessage);
        } else if (value.trim().length < length) {
          sink.addError(lengthMessage);
        } else {
          sink.add(value);
        }
      },
    );
  }

  validateExpirationDate() {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        bool isAfter = false;
        if ((value.trim()).isNotEmpty) {
          DateTime? selectedDateTime = DateTime.tryParse(value.trim());
          isAfter = selectedDateTime!.isAfter(
            DateTime(DateTime.now().year, DateTime.now().month - 1),
          );
        }
        if ((value.trim()).isEmpty) {
          sink.addError(languages.selectCardDate);
        } else if (!isAfter) {
          sink.addError(languages.selectValidDate);
        } else {
          sink.add(value);
        }
      },
    );
  }

  final validateFirstName = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.trim().isEmpty) {
        sink.addError(languages.enterFirstName);
      } else {
        sink.add(value);
      }
    },
  );

  final validateLastName = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.trim().isEmpty) {
        sink.addError(languages.enterLastName);
      } else {
        sink.add(value);
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.trim().isEmpty) {
        sink.addError(languages.enterPass);
      } else if (value.trim().length < 6) {
        sink.addError(languages.passShortMsg);
      } else {
        sink.add(value);
      }
    },
  );

  final validateMobileNumber = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.trim().isEmpty) {
        sink.addError(languages.enterMobileNumber);
      } else {
        sink.add(value);
      }
    },
  );

  final validateOldPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if ((value.trim()).isEmpty) {
        sink.addError(languages.enterOldPass);
      } else if ((value.trim()).length < 6) {
        sink.addError(languages.passShortMsg);
      } else {
        sink.add(value);
      }
    },
  );

  final validateNewPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.trim().isEmpty) {
        sink.addError(languages.enterNewPass);
      } else if (value.trim().length < 6) {
        sink.addError(languages.passShortMsg);
      } else {
        sink.add(value);
      }
    },
  );

  validateWithFixLength(int length, String emptyMsg, String invalidMsg) {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        if (value.trim().isEmpty) {
          sink.addError(emptyMsg);
        } else if (value.trim().length != length) {
          sink.addError(invalidMsg);
        } else {
          sink.add(value);
        }
      },
    );
  }

  validateEmail(String emptyMsg, String invalidMsg) {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        String pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        if (value.trim().isEmpty) {
          sink.addError(emptyMsg);
        } else if (!RegExp(pattern).hasMatch(value)) {
          sink.addError(invalidMsg);
        } else {
          sink.add(value);
        }
      },
    );
  }

  validateCourierGoods(double goodsItem, String emptyMsg, String invalidMsg) {
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink) {
        if (value.trim().isEmpty) {
          sink.addError(emptyMsg);
        } else if (value.trim().isNotEmpty &&
            double.parse(value.trim()) > goodsItem) {
          sink.addError(invalidMsg);
        } else {
          sink.add(value);
        }
      },
    );
  }
}
