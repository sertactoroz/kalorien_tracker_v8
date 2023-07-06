class NutritionModels {
  NutritionModels({
    required this.items,
  });
  late final List<Items> items;

  NutritionModels.fromJson(Map<String, dynamic> json) {
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['items'] = items.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Items {
  Items({
    required this.sugarG,
    required this.fiberG,
    required this.servingSizeG,
    required this.sodiumMg,
    required this.name,
    required this.potassiumMg,
    required this.fatSaturatedG,
    required this.fatTotalG,
    required this.calories,
    required this.cholesterolMg,
    required this.proteinG,
    required this.carbohydratesTotalG,
  });
  late final double sugarG;
  late final int? fiberG;
  late final double? servingSizeG;
  late final int sodiumMg;
  late final String name;
  late final int potassiumMg;
  late final double? fatSaturatedG;
  late final double fatTotalG;
  late final double calories;
  late final int cholesterolMg;
  late final double proteinG;
  late final double carbohydratesTotalG;

  Items.fromJson(Map<String, dynamic> json) {
    sugarG = json['sugar_g'];
    fiberG = json['fiber_g'];
    servingSizeG = json['serving_size_g'];
    sodiumMg = json['sodium_mg'];
    name = json['name'];
    potassiumMg = json['potassium_mg'];
    fatSaturatedG = json['fat_saturated_g'];
    fatTotalG = json['fat_total_g'];
    calories = json['calories'];
    cholesterolMg = json['cholesterol_mg'];
    proteinG = json['protein_g'];
    carbohydratesTotalG = json['carbohydrates_total_g'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sugar_g'] = sugarG;
    _data['fiber_g'] = fiberG;
    _data['serving_size_g'] = servingSizeG;
    _data['sodium_mg'] = sodiumMg;
    _data['name'] = name;
    _data['potassium_mg'] = potassiumMg;
    _data['fat_saturated_g'] = fatSaturatedG;
    _data['fat_total_g'] = fatTotalG;
    _data['calories'] = calories;
    _data['cholesterol_mg'] = cholesterolMg;
    _data['protein_g'] = proteinG;
    _data['carbohydrates_total_g'] = carbohydratesTotalG;
    return _data;
  }
}
