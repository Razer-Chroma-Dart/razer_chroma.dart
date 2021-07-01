import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

/// Client author information.
@freezed
class Author with _$Author {
  @Assert('name.length <= 64')
  @Assert('contact.length <= 64')
  const factory Author({
    /// Author name. (max length 64)
    ///
    /// Example: `Chroma Developer`
    @JsonKey(name: 'name') required String name,

    /// Author contact. (max length 64)
    ///
    /// Example: `www.razerzone.com`
    @JsonKey(name: 'contact') required String contact,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
