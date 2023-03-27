// To parse this JSON data, do
//
//     final createUserModel = createUserModelFromJson(jsonString);

import 'dart:convert';

class ServerResponseMessageModel {
  ServerResponseMessageModel({
    this.status,
    this.message,
  });

  final String? status;
  final String? message;

  factory ServerResponseMessageModel.fromRawJson(String str) => ServerResponseMessageModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServerResponseMessageModel.fromJson(Map<String, dynamic> json) => ServerResponseMessageModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
