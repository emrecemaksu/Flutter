# flutter_learn

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Sadece bir widget değişmesini istiyorsan buildi başka bir Statefull Widgettan çağırmalısın.
Cache ler için Shared_Preferances pub paketi kullanılır.
Shred_Pref. daha iyisi Hive kullanımı.
Core componentler primitiv özellikler alir. Padding vs daha sonra tanimlanmali
IndicatorColor butun projede ayni olmali. Temadan belirlenmeli.
Bir componentin yerini anlamak icin container atip color vermek en basiti.
Core kodu her yere ekleyebilirken Product projeye özgü olur.
Expanded row ve columnlarda ise yarar.
Statefull da deger degisir ama degisikligi okutmak icin setState kullanman lazim.
Hareket varsa controlleri kullanmaliyiz. bknz. pageViewLear
PageView controller ile setState kullanmayiz cünkü kendisi Statefull ile mevcut.
Conteroller haric setState kullan Emre.
InitState ten dolayi setState kullanmiyoruz. Zaten init state buildden once calisiyor.
Padding içten Margin dıştan mesafe verir.
Database e doğrudan erişip veri yazabilir miyim? Hayır tehlikeli.
Bana database için api veya servis verilmesi lazım.
GET (+url)-> item çek POST -> item gönderir. DELETE -> siler PUT -> Update data
201 dönerse veri eklenmiştir demek. (Postman)
200 dönerse veri update olmuştur. (Postman)
200 dönerse veri silinir. (Postman)
200 300 arası başarılı.
400 sonrası sorunlu örn. 404 not found 
500 server çökmüş
http yerine dio daha başarılı.
Model kısmı var. Service kısmında ise veri alma add, delete, update, get işlemleri yapılmalı. Try Catch yapısnı burda kullanmalısın.
Extends ile sınıftan türetiriz ve iç kodda override ederek değişiklik yapabiliriz.
Implements de üst sınıfta metod vardır. Ve onu kullanmalıyız.
Shimmer, Lottie -> Paket önerileri
Paket kodu içerisinde channel, platform görüyorsan native den dependency si var.
Native den kasıt Android: Gradle IOS: CocoaPods
Paketi neden kullandığını üstünde belirt.
Ekran çizimlerinde ilgili sınıf extends edilmelidir. extends TickerProviderStateMixin
Paketleri dışarı çıkar. Başkası kullanırken okuması zor olur.