class CY 
{
  // This is Property
  var name;
  var lang;
  var _animal;
  static var city = "London";

  var color = "red , blue , white";

  // this is constructor
  /*CY(String name)
  {
    this.name = name;
  }*/
  
  CY(this.name,this.lang);
  //CY.lang(String name,lang) : this(name,lang);

  // this is method
  String showL() => this.lang;

  //this is Function setter
  void setAnimal(String animaL) => this._animal = animaL;

  // นี่ตือ Fantion Getter
  String getA() => this._animal;

  static void CH() => print("Hello");

  void SHP()
  {
    print("คนในประเทศ 66.65 ล้าน");
  }

}