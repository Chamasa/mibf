void main(){
   var resultGen = callGen(2040);
   print(resultGen);

   var resultColor = callColor();
   print(resultColor);

    callWeb("Google",port:"443",pro: "xml");
}


String callGen(int year)
{
    /*
    if(year >= 1996)
    {
        print("Gen Z");
    }
    else
    {
        print("Gen Y or Upper");
    }
    */

    var x = (year >= 1996) ? "Gen Z" : "Gen Y or Upper";

    return x;
}


int callColor([String newColor = "black"])
{
    List<String> colors = ["red","blue","green"];
    colors.add(newColor);
    for(var item in colors)
    {
        print(item);
    }

    return colors.length;
}


void callWeb (String web,{String pro = "https",String port = "80"}) => print("$web $pro $port");