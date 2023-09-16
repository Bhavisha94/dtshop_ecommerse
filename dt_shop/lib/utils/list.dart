import 'package:dt_shop/model/cart_item.dart';
import 'package:dt_shop/model/categery_model.dart';
import 'package:dt_shop/model/category_checkbox.dart';
import 'package:dt_shop/model/category_type.dart';
import 'package:dt_shop/model/fashion_model.dart';
import 'package:dt_shop/model/language_model.dart';
import 'package:dt_shop/model/mens_wear.dart';
import 'package:dt_shop/model/size.dart';
import 'package:dt_shop/model/wallet_model.dart';
import 'package:flutter/material.dart';

List<CategoryModel> category = [
  CategoryModel(image: 'men', name: 'Men'),
  CategoryModel(image: 'women', name: 'Women'),
  CategoryModel(image: 'kids', name: 'Kids'),
  CategoryModel(image: 'winter', name: 'Winter'),
  CategoryModel(image: 'monsoon', name: 'Monsoon')
];

List<FashionModel> fashionList = [
  FashionModel(
      image: 'dress1', color: const Color(0xffDEE9FF), width: 44, height: 136),
  FashionModel(
      image: 'dress2', color: const Color(0xffFFE8DE), width: 68, height: 122),
  FashionModel(
      image: 'dress3', color: const Color(0xffEFDEFF), width: 60, height: 123)
];

List<CategoryTypeModel> allCategories = [
  CategoryTypeModel(image: 'footware', name: 'Footware', width: 43, height: 48),
  CategoryTypeModel(image: 'topwear', name: 'Topwear', width: 39, height: 49),
  CategoryTypeModel(
      image: 'bottomwear', name: 'Bottomwear', width: 21, height: 52),
  CategoryTypeModel(image: 'watches', name: 'Watches', width: 44, height: 51),
  CategoryTypeModel(image: 'jeans', name: 'Jeans', width: 40, height: 49),
  CategoryTypeModel(image: 't_shirt', name: 'T-Shirts', width: 48, height: 46),
  CategoryTypeModel(
      image: 'botttomwear2', name: 'Bottomwear', width: 22, height: 54),
  CategoryTypeModel(image: 'laptops', name: 'Laptops', width: 48, height: 40),
  CategoryTypeModel(image: 'table', name: 'Tables', width: 45, height: 31),
  CategoryTypeModel(image: 'mobile', name: 'Mobiles', width: 58, height: 58),
  CategoryTypeModel(image: 'skirts', name: 'Skirts', width: 56, height: 37),
  CategoryTypeModel(
      image: 'winter_wear', name: 'Winter wear', width: 48, height: 52),
  CategoryTypeModel(image: 'light', name: 'Lights', width: 50, height: 28),
  CategoryTypeModel(image: 'fan', name: 'Fan', width: 42, height: 46),
  CategoryTypeModel(image: 'ac', name: 'AC', width: 60, height: 38),
  CategoryTypeModel(image: 'ear-birds', name: 'Earbirds', width: 40, height: 46)
];

List<String> brands = [
  'top_brand1',
  'top_brand2',
  'top_brand3',
  'top_brand4',
  'top_brand5'
];

List<MensWearModel> mensWear = [
  MensWearModel(
      image: 'mens_wear1',
      title: 'Liano man wear',
      desc: 'Man suit',
      price: '3000'),
  MensWearModel(
      image: 'mens_wear2',
      title: 'Liano man wear',
      desc: 'Man tie suit',
      price: '2000'),
  MensWearModel(
      image: 'mens_wear3',
      title: 'Winter wear',
      desc: 'cap with coat',
      price: '1000')
];

List<CategoryTypeModel> popularList = [
  CategoryTypeModel(
      image: 'black_tshirt',
      name: 'Black t shirt',
      width: 52,
      height: 104,
      price: '200'),
  CategoryTypeModel(
      image: 'bulb',
      name: 'Home lighting bulb',
      width: 108,
      height: 97,
      price: '2000'),
  CategoryTypeModel(
      image: 'microwave',
      name: 'Samsung microwave',
      width: 110,
      height: 66,
      price: '3000'),
  CategoryTypeModel(
      image: 'gold_watch',
      name: 'Gold plated watch',
      width: 74,
      height: 78,
      price: '2000'),
  CategoryTypeModel(
      image: 'oppo',
      name: 'Oppo m3 smartphone',
      width: 86,
      height: 95,
      price: '10,000'),
  CategoryTypeModel(
      image: 'speaker',
      name: 'Defender speaker',
      width: 100,
      height: 64,
      price: '1000')
];

List<CategoryTypeModel> topDealList = [
  CategoryTypeModel(
      image: 'vivo',
      name: 'Vivo smart',
      backgrond: 'vivo_bg',
      width: 61,
      height: 121),
  CategoryTypeModel(
      image: 'oppo',
      name: 'Oppo smart',
      backgrond: 'oppo_bg',
      width: 63,
      height: 121),
  CategoryTypeModel(
      image: 'apple',
      name: 'Apple',
      backgrond: 'apple_bg',
      width: 63,
      height: 117)
];

List<CategoryTypeModel> exploreList = [
  CategoryTypeModel(
      image: 'explore1',
      name: 'Nike Shoes',
      width: 73,
      height: 84,
      price: '800'),
  CategoryTypeModel(
      image: 'explore2',
      name: 'Man trousar',
      width: 35,
      height: 90,
      price: '500'),
  CategoryTypeModel(
      image: 'explore3',
      name: 'Adidas Shoes',
      width: 100,
      height: 50.88,
      price: '800'),
  CategoryTypeModel(
      image: 'explore4', name: 'Tital', width: 60, height: 90, price: '1000'),
  CategoryTypeModel(
      image: 'explore5',
      name: 'Levi\'s Jeans',
      width: 50,
      height: 101,
      price: '1200'),
  CategoryTypeModel(
      image: 'explore6',
      name: 'Spaker jeans',
      width: 72,
      height: 86,
      price: '500'),
  CategoryTypeModel(
      image: 'explore7',
      name: 'Levi\'s Jacket',
      width: 92,
      height: 90,
      price: '1000'),
  CategoryTypeModel(
      image: 'explore8',
      name: 'Levi\'s Jeans',
      width: 25,
      height: 91,
      price: '1500'),
  CategoryTypeModel(
      image: 'explore9',
      name: 'Man trousar',
      width: 116,
      height: 102,
      price: '400'),
  CategoryTypeModel(
      image: 'explore10',
      name: 'Grey Shirt',
      width: 102,
      height: 102,
      price: '950'),
  CategoryTypeModel(
      image: 'explore11',
      name: 'Black Shirt',
      width: 74,
      height: 102,
      price: '750'),
  CategoryTypeModel(
      image: 'explore12',
      name: 'Oppo m3',
      width: 60,
      height: 108,
      price: '10000'),
  CategoryTypeModel(
      image: 'explore13', name: 'Titan', width: 62, height: 103, price: '1050'),
  CategoryTypeModel(
      image: 'explore14',
      name: 'Cream shirt',
      width: 67,
      height: 100,
      price: '550'),
  CategoryTypeModel(
      image: 'explore15',
      name: 'Apple iphone',
      width: 65,
      height: 90,
      price: '20000'),
  CategoryTypeModel(
      image: 'explore16', name: 'Rolex', width: 90, height: 90, price: '2000'),
  CategoryTypeModel(
      image: 'explore17',
      name: 'Vivo i3',
      width: 91,
      height: 91,
      price: '15000'),
  CategoryTypeModel(
      image: 'explore18',
      name: 'Mi 56a',
      width: 92,
      height: 92,
      price: '30000'),
];

List<WalletModel> walletList = [
  WalletModel(
      image: 'R',
      title: 'Payment Recieved',
      subtitle: 'From DTShop',
      amount: '+500',
      date: '20 Aug'),
  WalletModel(
      image: 'D',
      title: 'Debit',
      subtitle: 'From DTShop',
      amount: "-200",
      date: '20 Aug'),
  WalletModel(
      image: 'R',
      title: 'Payment Received',
      subtitle: 'From DTShop',
      amount: '+500',
      date: '20 Aug'),
  WalletModel(
      image: 'A',
      title: 'Add Amount',
      subtitle: 'From ADC Bank',
      amount: "+200",
      date: "20 Aug"),
  WalletModel(
      image: 'R',
      title: 'Payment Recieved',
      subtitle: 'From DTShop',
      amount: '+500',
      date: "20 Aug"),
  WalletModel(
      image: 'D',
      title: 'Debit',
      subtitle: 'From DTShop',
      amount: '-200',
      date: '20 Aug')
];

List<LanguageModel> languageList = [
  LanguageModel(label: 'अ', name: 'हिंदी'),
  LanguageModel(label: 'A', name: 'English'),
  LanguageModel(label: 'अ', name: 'मराठी'),
  LanguageModel(label: 'अ', name: 'ગુજરાતી'),
  LanguageModel(label: 'അ', name: 'മലയലമ'),
  LanguageModel(label: 'அ', name: 'டமிள'),
  LanguageModel(label: 'అ', name: 'తాలుగు'),
  LanguageModel(label: 'ಅ', name: 'ಕನಡ ದ')
];
List<CategoryCheckboxModel> checkboxList = [
  CategoryCheckboxModel(title: 'T-Shirt'),
  CategoryCheckboxModel(title: 'Jacket'),
  CategoryCheckboxModel(title: 'Winter Wear'),
  CategoryCheckboxModel(title: 'Jeans'),
  CategoryCheckboxModel(title: 'Footware'),
  CategoryCheckboxModel(title: 'Bottomwear'),
  CategoryCheckboxModel(title: 'Laptops'),
  CategoryCheckboxModel(title: 'Tables'),
  CategoryCheckboxModel(title: 'Mobiles'),
  CategoryCheckboxModel(title: 'Skirts'),
  CategoryCheckboxModel(title: 'Lights'),
  CategoryCheckboxModel(title: 'Fan'),
  CategoryCheckboxModel(title: 'AC'),
  CategoryCheckboxModel(title: 'Earbirds'),
  CategoryCheckboxModel(title: '2.0 above'),
  CategoryCheckboxModel(title: '3.0 above'),
  CategoryCheckboxModel(title: '4.0 above'),
  CategoryCheckboxModel(title: 'DT-Trusted')
];

List<CartItemModel> itemList = [
  CartItemModel(name: 'Lumino Red Dress', qty: 1, size: 1),
  CartItemModel(name: 'Lumino Red Dress', qty: 1, size: 1)
];

List<CategoryCheckboxModel> categoryFilter = [
  CategoryCheckboxModel(title: 'T-Shirt'),
  CategoryCheckboxModel(title: 'Jacket'),
  CategoryCheckboxModel(title: 'Winter Wear'),
];

List<SizeModel> sizeList = [
  SizeModel(size: '24'),
  SizeModel(size: '26'),
  SizeModel(size: '28'),
  SizeModel(size: '30'),
  SizeModel(size: '34'),
  SizeModel(size: '36'),
  SizeModel(size: '40'),
  SizeModel(size: 'XL'),
  SizeModel(size: 'XXL')
];

List<String> reviewList = ['winter', 'winter_wear'];

List<String> likeDresses = ['pink_dress', 'purple_dress', 'pink_dress'];
