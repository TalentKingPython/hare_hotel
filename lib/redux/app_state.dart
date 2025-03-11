import 'package:flutter/material.dart';

@immutable
class AppState {
  const AppState();

  factory AppState.initial() {
    return AppState();
  }

  dynamic toJson() {
    return {};
  }

  static AppState? fromJson(dynamic json) {
    return json != null ? AppState() : null;
  }

  AppState copyWith() {
    return AppState();
  }
}
