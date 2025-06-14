import 'package:sixam_mart/features/rental_module/rental_cart_screen/domain/models/car_cart_model.dart';

class CartHelper{
  static Future<bool> checkTypeInCart(List<Carts> cartList, String rentalType) async{
    bool status = false;
    for (var cart in cartList) {
      if(rentalType == 'hourly') {
        status = cart.vehicle!.tripHourly!;
      } else {
        status = cart.vehicle!.tripDistance!;
      }
      if(!status) {
        break;
      }
    }
    return status;
  }
}