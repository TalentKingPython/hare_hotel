class ButtonCategoryPojo {
  int? _categoryId;
  String? _svgPath;
  String? _categoryName;

  int get categoryId => _categoryId ?? 0;

  String get svgPath => _svgPath ?? '';

  String get categoryName => _categoryName ?? '';

  ButtonCategoryPojo({int? categoryId, String? svgPath, String? categoryName}) {
    _categoryId = categoryId;
    _svgPath = svgPath;
    _categoryName = categoryName;
  }

  ButtonCategoryPojo.fromJson(dynamic json) {
    _categoryId = json["category_id"];
    _svgPath = json["svg_path"];
    _categoryName = json["category_name"];
  }

  Map<String?, dynamic> toJson() {
    var map = <String?, dynamic>{};
    map["category_id"] = _categoryId;
    map["svg_path"] = _svgPath;
    map["category_name"] = _categoryName;
    return map;
  }
}
