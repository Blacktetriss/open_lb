import 'package:flutter/material.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:build_runner/build_runner.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
//import 'package:flutter/foundation.dart';
part 'test.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Book{
  int page;
  int perPage;
  int total;
  int totalPages;
  Author author;
  List<Data> data;

  Book({this.page,
    this.perPage,
    this.total,
    this.totalPages, this.author, this.data});

  factory Book.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['data'] as List;
    List<Data> data = list.map((i) => Data.fromJson(i)).toList();


    return Book(
        page: parsedJson['page'],
        perPage: parsedJson['per_page'],
        total: parsedJson['total'],
        totalPages: parsedJson['total_pages'],
        author: Author.fromJson(parsedJson['author']),
        data: data

    );
  }
}



class Author{
  String firstName;
  String lastName;

  Author({this.firstName, this.lastName});

  factory Author.fromJson(Map<String, dynamic> parsedJson){
    return Author(
      firstName: parsedJson['first_name'],
      lastName : parsedJson['last_name'],
    );
  }

}

class Data{
  int id;
  String firstName; // add others
  List<Image> imagesList;

  Data({
    this.id, this.firstName, this.imagesList
  });

  factory Data.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['images'] as List;
    List<Image> images = list.map((i) => Image.fromJson(i)).toList();


    return Data(
        id: parsedJson['id'],
        firstName: parsedJson['first_name'],
        imagesList: images

    );
  }
}

class Image{
  int id;
  String imageName;

  Image({
    this.id, this.imageName

  });

  factory Image.fromJson(Map<String, dynamic> parsedJson){
    return Image(
      id: parsedJson['id'],
      imageName : parsedJson['imageName'],
    );
  }

}


//  Book({
//    this.title,
//    this.authorName,
//    this.authorKey,
//    this.firstPublishYear,
//    this.editionCount});
//  docs[11].language
//  @JsonSerializable(fieldRename: FieldRename.snake)






