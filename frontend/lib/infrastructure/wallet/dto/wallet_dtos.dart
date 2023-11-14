import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
part 'wallet_dtos.freezed.dart';
part 'wallet_dtos.g.dart';

@freezed
class WalletDto with _$WalletDto {
  const WalletDto._();

  const factory WalletDto({required int amount}) = _WalletDto;

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);

  factory WalletDto.fromDomain(Wallet wallet) {
    return WalletDto(
      amount: wallet.amount,
    );
  }

  Wallet toDomain() {
    return Wallet(
      amount: amount,
    );
  }
}
