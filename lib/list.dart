import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart';

const url = 'assets/produits/';

List labels = [
  {'text':'Selling', 'icon':Icons.production_quantity_limits},
  {'text':'Deals', 'icon':Icons.flash_on},
  {'text':'Categories', 'icon':Icons.category},
  {'text':'Saved', 'icon':Icons.favorite_border},
];

List products = [
  {'text':'the 45mm GPS version of the Apple Watch Series 7  ...', 'image':url+'applewatch.jpg',
    'prix':'379 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'Apple MacBook Pro 16 2021 M1 Max Laptop ...', 'image':url+'macbooks.jpg',
    'prix':'47,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: '84,99 EUR', style: TextStyle(decoration:TextDecoration.lineThrough)),
    TextSpan(text: ' '+String.fromCharCode($bull)), TextSpan(text:' 44 % de réduction', style: TextStyle(fontWeight:FontWeight.bold))])},
  {'text':'Apple Iphone 11 128 Go rouge (Etat Comme neuf)', 'image':url+'recondi.png', 'prix':'769,00 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'Bengali saree...', 'image':url+'saree.jpg',
    'prix':'129,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'PHILIPS OneBlade Pro QP6510/64 Rasoir Tondeuse à Barbe Etan...', 'image':url+'tondeuse.jpg',
    'prix':'47,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: '84,99 EUR', style: TextStyle(decoration:TextDecoration.lineThrough)),
    TextSpan(text: ' '+String.fromCharCode($bull)), TextSpan(text:' 44 % de réduction', style: TextStyle(fontWeight:FontWeight.bold))])},
  {'text':'Apple Iphone 11 128 Go rouge (Etat Comme neuf)', 'image':url+'recondi.png', 'prix':'769,00 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'fresh product...', 'image':url+'bbq.png',
    'prix':'129,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'PHILIPS OneBlade Pro QP6510/64 Rasoir Tondeuse à Barbe Etan...', 'image':url+'tondeuse.jpg',
    'prix':'47,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: '84,99 EUR', style: TextStyle(decoration:TextDecoration.lineThrough)),
    TextSpan(text: ' '+String.fromCharCode($bull)), TextSpan(text:' 44 % de réduction', style: TextStyle(fontWeight:FontWeight.bold))])},
  {'text':'Apple Iphone 11 128 Go rouge (Etat Comme neuf)', 'image':url+'recondi.png', 'prix':'769,00 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
  {'text':'apple ...', 'image':url+'bbq.png',
    'prix':'129,99 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
];

List grid = [
  {'text':'High-Tech', 'image':url+'pc.png', 'color':Colors.deepOrange[400]},
  {'text':'Reconditionné', 'image':url+'recondi.png', 'color':Colors.deepOrange[100]},
  {'text':'#eBayAvecVous', 'image':'assets/5.png', 'color':Colors.grey[400]},
  {'text':'Maison & Jardin', 'image':url+'perceuse.png', 'color':Colors.deepOrange[100]},
  {'text':'Loisirs', 'image':url+'trotti.png', 'color':Colors.deepOrange[400]},
  {'text':'Pièces Auto & Moto', 'image':url+'roue.png', 'color':Colors.orange[900]},
];