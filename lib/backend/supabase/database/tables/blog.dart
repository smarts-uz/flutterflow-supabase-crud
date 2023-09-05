import '../database.dart';

class BlogTable extends SupabaseTable<BlogRow> {
  @override
  String get tableName => 'Blog';

  @override
  BlogRow createRow(Map<String, dynamic> data) => BlogRow(data);
}

class BlogRow extends SupabaseDataRow {
  BlogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BlogTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('createdAt')!;
  set createdAt(DateTime value) => setField<DateTime>('createdAt', value);

  DateTime? get updatedAt => getField<DateTime>('updatedAt');
  set updatedAt(DateTime? value) => setField<DateTime>('updatedAt', value);
}
