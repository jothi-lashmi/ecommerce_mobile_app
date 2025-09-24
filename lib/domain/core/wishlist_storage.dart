import 'package:firebase_auth_project/domain/core/cart_product.dart';
import 'package:flutter/material.dart';

import 'product.dart';

ValueNotifier<List<Product>> wishlistNotifier = ValueNotifier([]);
ValueNotifier<List<CartProduct>> cartlistNotifier = ValueNotifier([]);
