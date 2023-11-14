
import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required int amount
  }) = _Wallet;
}