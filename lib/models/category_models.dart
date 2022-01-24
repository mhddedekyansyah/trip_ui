class CategoryModel{
  String? title;
  String? subTitle;
  CategoryModel({required this.title, required this.subTitle});
  
  static List<CategoryModel> generatedCategory(){
    return [
      CategoryModel(title: 'Solo Trip', subTitle: 'Suitable for you need a calm situation'),
      CategoryModel(title: 'Family Trip', subTitle: 'Suitable for Make Perfect Memory'),
      CategoryModel(title: 'Couples Trip', subTitle: 'Suitable for spending time with loved ones'),
      CategoryModel(title: 'Company Trip', subTitle: 'Suitable for refreshing your office mind'),
    ];
  }
}