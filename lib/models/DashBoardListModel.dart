class DashBoardListModel {
   String image_assets;
   String title;
   String starteingPrice;

  DashBoardListModel({this.title, this.image_assets,this.starteingPrice});


  String get images => image_assets;


}