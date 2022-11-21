
void main(){
  
  int alter = 32;    //Iteger

  double meinDouble = 4.4;  // double

  bool meinBool = false; // bool

  //  ###############################  

  String meinString = "Der Ball";

  String zweitenString = " ist rot.";

  String verkettet = meinString + zweitenString;

  print(verkettet);

  print(meinString + zweitenString);

  print(meinString + " ist blau.");

  String multiline = ''' das
  ist 
  ein 
  string
  ''';

  print(multiline);

  int wert = 3;

  String beispiel = "Der Wert ist: $wert";

  print(beispiel);

  // ! Statisch

  int alter1 = 32;    //Iteger

  double meinDouble1 = 4.4;  // double

  bool meinBool1 = false; // bool

  String meinString1 = "Der Ball";

  // ! Automatisch   -->  Datentyp zu weisen erkent es automatisch

  var alter2 = 32;    //Iteger

  var meinDouble2 = 4.4;  // double

  var meinBool2 = false; // bool

  var meinString2 = "Der Ball";

  dynamic variable3 ;

  variable3 = 3;

  variable3 = "string";
}



//          das ist ein grüner Komentar
//?         das ist ein blauer Kommentar
//!         das ist ein roter Kommentar
//*         das ist ein hellgrüner Kommentar
//todo      das ist ein oranger Kommentar
/**
 * ?
 * !
 *  todo   123      das ist kein
*/


