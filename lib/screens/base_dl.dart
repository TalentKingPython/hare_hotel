/// status : 1
/// message : "success!"
/// message_code : 1
library;

class BaseModel {
  int? _status;
  String? _message;
  int? _messageCode;

  String get message => _message ?? "";

  int get status => _status ?? 0;

  int get messageCode => _messageCode ?? 0;

  BaseModel({int? status, String? message, int? messageCode}) {
    _status = status;
    _message = message;
    _messageCode = messageCode;
  }

  BaseModel.fromJson(dynamic json) {
    _status = json["status"];
    _message = json["message"];
    _messageCode = json["message_code"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    map["message"] = _message;
    map["message_code"] = _messageCode;
    return map;
  }
}

class KeyValueModel {
  bool setDivider, setBold;
  Function()? setButton;
  String key, value;

  KeyValueModel(
    this.setDivider,
    this.setBold,
    this.key,
    this.value, {
    this.setButton,
  });
}
