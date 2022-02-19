import 'package:flutter/material.dart';

void main(){
  var cube1=Cuboid(2,2,2);
  print(cube1.SurfaceArea());
  print(cube1.Volume());
  var cube2=Cube(1, 2, 3);

  print(cube2.SurfaceArea());
}

class Cuboid{
  late num _length;
  late num _width;
  late num _height;

  num getlength() => _length;
  num getwidth() => _width;
  num getheight() => _height;

  setlength(num length) {
    _length = length;
  }

  setwidth(num width) {
    _width = width;
  }

  setheight(num height) {
    _height = height;
  }

  Cuboid(num _length,num _width,num _height){
    this._length = _length;
    this._width = _width;
    this._height = _height;
  }
   String SurfaceArea(){
    return 'SurfaceArea:${this._length * this._width}';
  }

  String Volume(){
    return 'Volume:${this._height * this._width * this._length}';
  }
}

class Cube extends Cuboid{
  @override
  late num _length;

  Cube(num length,num height,num width) : super(width,height,length){
      _length = length;
  //  super(_width,_height,_length);
  }



}