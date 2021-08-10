import 'cy.dart';
import 'PP.dart';

class City extends CY with PPL
{
  var city;

  City(this.city) : super("UK","English");

  void callS()
  {
    super.SHP();
  }

  @override
  void SHP ()
  {
    print("จำนวนคนใน $city มี 9 ล้านคน");
  }
}