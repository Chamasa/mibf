//import 'cy.dart';
import 'city.dart';
void main ()
{
  City item =City("London");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.lang);
  item.callS();
  item.SHP();
  item.SPP();


  /*
  var itme = new CY.lang("UK","English");
  print("ประเทศ :"+itme.name);
  print("ภาษาประจำชาติ :"+itme.showL());
  itme.setAnimal("Lion");
  print("สัตว์ประจำชาติ : "+itme.getA());

  print("เมืองหลวง :"+CY.city);
  CY.CH();
  */
}