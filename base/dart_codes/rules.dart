import 'dart:io' as inputoutput;

late var sonradanMesaj; //Late null değerine

//Ana Method
void main(List<String> args) {
  sonradanMesaj = 'Dart Main Metoduna Geldiniz.';
  //print(sonradanMesaj);
  //statements();
}

//Değişkenler
void builtintypes() {
  var basitSayi = 12; //int
  var basitYazi = 'Emre'; //String
  var virgulluSayi = 13.13; //double
  var liste = ['emre', 'pelin', 2]; //list Object tipli oldu. (String + int)
  var mapYapisi = {'Ad': 'Emre', 'Yaş': 13}; //Map
  Object kalem = 'Dolma'; //Object
  String? Adsiz; //Boş String Null safety için soru işareti
  assert(Adsiz == null); //Error Exc. için assert True değeri döner.
  final String degismeyenAd =
      'Emre'; //Final asla değişmez. Runtime Çalışma zamanında değerlendirilir.
  const String degismeyenSoyad =
      'Aksu'; //Const asla değişmez. Compile Time Derleme Zamanında değerlendirilir.
  var records = ('first', a: 2, b: true, 'last'); //hem list hem map beraber
  (int, int) records2;
  ({int a, int b}) namedRecord = (a: 5, b: 6);
  (int, {int b}) mixedRecord = (5, b: 7);
}

void comments() {
  //Tekli yorum satırı.
  /**Çoklu
   * yorum satırı.
   */
  ///Documentation Comments
  ///Silmediğin sürece. Alt satırda da devam ediyor.
}

void operators() {}
void metadata() {}
void libraries() {
  ///imports kullanılır. As ile kütüphaneyi isim vererek kullanabiliriz.
}
void keywords() {}
void functions() {}
void statements() {
  var i = 0;
  if (i == 0) {
    print('Sayi => 0');
  } else {
    print('Sayi 0 değil.');
  }
  for (i; i < 3; i++) {
    print(i);
  }
  var listem = ['emre', 'nisa'];
  for (var ad in listem) {
    print(ad);
  }
  while (i < 7) {
    print(i);
    i++;
  }
  listem.forEach((var element) {
    print(element);
  });
}
