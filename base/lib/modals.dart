enum TabBar { anaSayfa, sepet, profil }

class Bweries {
  final String? id;
  final String? name;
  final String? breweryType;
  final String? address_1;
  final String? address_2;
  final String? address_3;
  final String? city;
  final String? stateProvince;
  final String? postalCode;
  final String? country;
  final String? longitude;
  final String? latitude;
  final String? phone;
  final String? websiteUrl;
  final String? state;
  final String? street;

  Bweries(
      {this.id,
      this.name,
      this.breweryType,
      this.address_1,
      this.address_2,
      this.address_3,
      this.city,
      this.stateProvince,
      this.postalCode,
      this.country,
      this.longitude,
      this.latitude,
      this.phone,
      this.websiteUrl,
      this.state,
      this.street});

  static Bweries fromJson(json) => Bweries(
      id: json['id'],
      name: json['name'],
      breweryType: json['brewery_type'],
      address_1: json['address_1'],
      address_2: json['address_2'],
      address_3: json['address_3'],
      city: json['city'],
      stateProvince: json['state_province'],
      postalCode: json['postal_code'],
      country: json['country'],
      longitude: json['longtitude'],
      latitude: json['latitude'],
      phone: json['phone'],
      websiteUrl: json['website_url'],
      state: json['state'],
      street: json['street']
      );
}
