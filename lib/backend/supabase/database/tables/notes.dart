import '../database.dart';

class NotesTable extends SupabaseTable<NotesRow> {
  @override
  String get tableName => 'notes';

  @override
  NotesRow createRow(Map<String, dynamic> data) => NotesRow(data);
}

class NotesRow extends SupabaseDataRow {
  NotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
