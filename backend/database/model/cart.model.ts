export class CartItem {
  id?: number;
  cartId?: number;
  productId: number;
  name: string;
  price: number;
  imageUrl: string;
  itemQty: number;
}

export class Cart {
  id?: number;
  userId?: number;
}
