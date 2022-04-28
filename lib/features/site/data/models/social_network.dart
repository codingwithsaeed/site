
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_network.freezed.dart';
part 'social_network.g.dart';

@freezed
class SocialNetwork with _$SocialNetwork {
  const factory SocialNetwork(
    String title,
    String logo,
    String link
  ) = _SocialNetwork;

  factory SocialNetwork.fromJson(Map<String, dynamic> json) => _$SocialNetworkFromJson(json);
}