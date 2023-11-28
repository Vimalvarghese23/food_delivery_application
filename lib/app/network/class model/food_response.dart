class FoodRes {
  String? error;
  PageInfo? pageInfo;
  List<Data>? data;

  FoodRes({this.error, this.pageInfo, this.data});

  FoodRes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    pageInfo = json['pageInfo'] != null
        ? new PageInfo.fromJson(json['pageInfo'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.pageInfo != null) {
      data['pageInfo'] = this.pageInfo!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PageInfo {
  int? status;
  bool? isError;
  int? currentPage;
  int? totalPages;
  int? pageSize;
  int? totalItems;

  PageInfo(
      {this.status,
      this.isError,
      this.currentPage,
      this.totalPages,
      this.pageSize,
      this.totalItems});

  PageInfo.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    isError = json['isError'];
    currentPage = json['currentPage'];
    totalPages = json['totalPages'];
    pageSize = json['pageSize'];
    totalItems = json['totalItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['isError'] = this.isError;
    data['currentPage'] = this.currentPage;
    data['totalPages'] = this.totalPages;
    data['pageSize'] = this.pageSize;
    data['totalItems'] = this.totalItems;
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? description;
  String? image;
  String? category;
  double? star;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.title,
      this.description,
      this.image,
      this.category,
      this.star,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    category = json['category'];
    star = json['star']?.toDouble();
    location = json['location'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['category'] = this.category;
    data['star'] = this.star;
    data['location'] = this.location;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
