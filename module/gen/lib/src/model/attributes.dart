import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
@immutable

///This modal will use X api response
final class Attributes with EquatableMixin {
  /// It will be used to create a new instance of this class
  const Attributes({
    this.title,
    this.body,
    this.crated,
    this.updated,
  });

  ///
  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
  final String? title;
  final String? body;
  final DateTime? crated;
  final DateTime? updated;

  /// The function converts an object of type Attributes to a JSON map.
  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [title, body, crated, updated];

  Attributes copyWith({
    String? title,
    String? body,
    DateTime? crated,
    DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      crated: crated ?? this.crated,
      updated: updated ?? this.updated,
    );
  }
}
