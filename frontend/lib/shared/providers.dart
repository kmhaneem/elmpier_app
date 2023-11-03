import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/advertisement_notifier.dart';
import 'package:frontend/application/advertisement/advertisement_state.dart';
import 'package:frontend/application/cart/cart_notifier.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/application/order/order_item_notifier.dart';
import 'package:frontend/application/order/order_item_state.dart';
import 'package:frontend/application/payment/payment_notifier.dart';
import 'package:frontend/application/payment/payment_state.dart';
import 'package:frontend/application/product/add_product/add_product_notifier.dart';
import 'package:frontend/application/product/add_product/add_product_state.dart';
import 'package:frontend/application/product/brand/brand_notifier.dart';
import 'package:frontend/application/product/brand/brand_state.dart';
import 'package:frontend/application/product/category/category_state.dart';
import 'package:frontend/application/product/product_model/model_notifier.dart';
import 'package:frontend/application/product/product_model/model_state.dart';
import 'package:frontend/application/product/search/search_notifier.dart';
import 'package:frontend/application/product/search/search_state.dart';
import 'package:frontend/application/product/view_product/product_notifier.dart';
import 'package:frontend/application/product/view_product/product_state.dart';
import 'package:frontend/application/product/view_product/seller/seller_product_notifier.dart';
import 'package:frontend/application/product/view_product/seller/seller_product_state.dart';
import 'package:frontend/application/user/address/district/district_notifier.dart';
import 'package:frontend/application/user/address/district/district_state.dart';
import 'package:frontend/application/user/address/province/province_notifier.dart';
import 'package:frontend/application/user/address/province/province_state.dart';
import 'package:frontend/application/user/profile/user_profile_notifier.dart';
import 'package:frontend/application/user/profile/user_profile_state.dart';
import 'package:frontend/application/user/user_notifier.dart';
import 'package:frontend/application/user/user_state.dart';
import 'package:frontend/infrastructure/advertisement/advertisement_repository.dart';
import 'package:frontend/infrastructure/auth/auth_repository.dart';
import 'package:frontend/infrastructure/cart/cart_repository.dart';
import 'package:frontend/infrastructure/orders/order_item_repository.dart';
import 'package:frontend/infrastructure/payment/payment_repository.dart';
import 'package:frontend/infrastructure/product/product_repository.dart';
import 'package:frontend/infrastructure/user/user_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tuple/tuple.dart';

import '../application/auth/auth_notifier.dart';
import '../application/auth/auth_state.dart';
import '../application/auth/sign_in/sign_in_notifer.dart';
import '../application/auth/sign_in/sign_in_state.dart';
import '../application/chat/message/message_notifier.dart';
import '../application/chat/message/message_state.dart';
import '../application/product/category/category_notifier.dart';
import '../domain/chat/chat.dart';
import '../domain/chat/message/message.dart';
import '../infrastructure/auth/secure_storage/secure_storage_service.dart';
import '../infrastructure/chat/message/message_repository.dart';
import '../presentation/routes/app_router.gr.dart';
import '../presentation/routes/auth_guard.dart';

final SecureStorageService secureStorage = SecureStorageService();
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

final messageRepositoryProvider = Provider<MessageRepository>(
    (ref) => MessageRepository(FirebaseFirestore.instance));


final messageNotifierProvider = StateNotifierProvider.family<MessageNotifier,
        MessageState, Tuple2<String, String>>(
    (ref, tuple) => MessageNotifier(
        ref.watch(messageRepositoryProvider), tuple.item1, tuple.item2));

final authRepositoryProvider = Provider(((ref) => AuthRepository(Dio())));

final productRepositoryProvider =
    Provider<ProductRepository>(((ref) => ProductRepository(Dio())));

final orderItemRepositoryProvider =
    Provider<OrderItemRepository>(((ref) => OrderItemRepository(Dio())));

final cartRepositoryProvider =
    Provider<CartRepository>(((ref) => CartRepository(Dio())));

final userRepositoryProvider =
    Provider<UserRepository>(((ref) => UserRepository(Dio())));

final PaymentRepositoryProvider =
    Provider<PaymentRepository>(((ref) => PaymentRepository(Dio())));

final advertisementRepositoryProvider = Provider<AdvertisementRepository>(
    ((ref) => AdvertisementRepository(Dio())));

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
    ((ref) => ProductNotifier(ref.watch(productRepositoryProvider))));

final sellerProductProvider =
    StateNotifierProvider<SellerProductNotifier, SellerProductState>(
        ((ref) => SellerProductNotifier(ref.watch(productRepositoryProvider))));

final orderItemProvider =
    StateNotifierProvider<OrderItemNotifier, OrderItemStates>(
        ((ref) => OrderItemNotifier(ref.watch(orderItemRepositoryProvider))));

final addProductProvider =
    StateNotifierProvider<AddProductNotifier, AddProductState>(
        ((ref) => AddProductNotifier(ref.watch(productRepositoryProvider))));

final selectedImagesProvider = StateProvider<List<XFile>>((ref) => []);

final categoryProvider = StateNotifierProvider<CategoryNotifier, CategoryState>(
    (ref) => CategoryNotifier(ref.watch(productRepositoryProvider)));

final brandProvider = StateNotifierProvider<BrandNotifier, BrandState>(
    (ref) => BrandNotifier(ref.watch(productRepositoryProvider)));

final modelProvider = StateNotifierProvider<ModelNotifier, ModelState>(
    (ref) => ModelNotifier(ref.watch(productRepositoryProvider)));

final productSearchProvider =
    StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(ref.watch(productRepositoryProvider)),
);

final advertisementProvider =
    StateNotifierProvider<AdvertisementNotifier, AdvertisementState>(
  (ref) => AdvertisementNotifier(ref.watch(advertisementRepositoryProvider)),
);

final signInProvider =
    StateNotifierProvider<SignInNotifier, SignInState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInNotifier(authRepository);
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authFacade = ref.watch(authRepositoryProvider);
  return AuthNotifier(authFacade);
});

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());
final attemptedToAddProductProvider = StateProvider<bool>((ref) => false);

final cartProvider = StateNotifierProvider<CartNotifier, CartState>(
    ((ref) => CartNotifier(ref.watch(cartRepositoryProvider))));

final userProvider = StateNotifierProvider<UserNotifier, UserState>(
    ((ref) => UserNotifier(ref.watch(userRepositoryProvider))));

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>(
    (ref) => UserNotifier(ref.watch(userRepositoryProvider)));

final userProfileProvider =
    StateNotifierProvider<UserProfileNotifier, UserProfileState>((ref) =>
        UserProfileNotifier(ref.watch(userRepositoryProvider),
            ref.watch(userNotifierProvider.notifier))); // 

final paymentProvider = StateNotifierProvider<PaymentNotifier, PaymentState>(
    ((ref) => PaymentNotifier(ref.watch(PaymentRepositoryProvider))));

final provinceProvider = StateNotifierProvider<ProvinceNotifier, ProvinceState>(
    ((ref) => ProvinceNotifier(ref.watch(userRepositoryProvider))));

final districtProvider = StateNotifierProvider<DistrictNotifier, DistrictState>(
    ((ref) => DistrictNotifier(ref.watch(userRepositoryProvider))));

final selectedQtyProvider = StateProvider<int>((ref) => 1);

final userIdProvider = FutureProvider<String?>((ref) async {
  final String? userId = await secureStorage.read("user-id");
  return userId;
});

Future<String?> getEmailByUserId(String userId) async {
  final DocumentSnapshot userSnapshot =
      await _firestore.collection('users').doc(userId).get();
  final data = userSnapshot.data() as Map<String, dynamic>?;
  return data?['email'] as String?;
}

final allChatProvider =
    FutureProvider.autoDispose.family<List<Chat>, String>((ref, userId) async {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final QuerySnapshot chatsSnapshot = await _firestore
      .collection('chat_rooms')
      .where('participants', arrayContains: userId)
      .get();

  print('FETCHED ${chatsSnapshot.docs.length}, ${userId} CHAT ROOM *******');

  final List<Chat> chats = [];

  for (final chatDoc in chatsSnapshot.docs) {
    final data = chatDoc.data() as Map<String, dynamic>;
    final lastMessageData = data['lastMessage'] as Map<String, dynamic>;

    final lastMessage = Message(
      content: lastMessageData['content'],
      timestamp: lastMessageData['timestamp'],
      senderId: lastMessageData['senderId'],
      receiverId: lastMessageData['receiverId'],
      senderEmail: lastMessageData['senderEmail'],
    );

    final otherUserId =
        (data['participants'] as List).firstWhere((id) => id != userId);
    final otherUserEmail = await getEmailByUserId(otherUserId);

    chats.add(Chat(
      chatId: chatDoc.id,
      otherUserId: otherUserId,
      otherUserEmail: otherUserEmail!,
      lastMessage: lastMessage,
    ));
  }
  chats.sort(
      (a, b) => b.lastMessage.timestamp.compareTo(a.lastMessage.timestamp));
  return chats;
});
