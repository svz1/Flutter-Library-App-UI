class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image'])).toList();

List newBookData = [
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
];
