import '../database.dart';

class ShopTable extends SupabaseTable<ShopRow> {
  @override
  String get tableName => 'shop';

  @override
  ShopRow createRow(Map<String, dynamic> data) => ShopRow(data);
}

class ShopRow extends SupabaseDataRow {
  ShopRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShopTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  double? get size => getField<double>('size');
  set size(double? value) => setField<double>('size', value);
}
