import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'textfield_input_record.g.dart';

abstract class TextfieldInputRecord
    implements Built<TextfieldInputRecord, TextfieldInputRecordBuilder> {
  static Serializer<TextfieldInputRecord> get serializer =>
      _$textfieldInputRecordSerializer;

  @nullable
  String get input;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TextfieldInputRecordBuilder builder) =>
      builder..input = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('textfieldInput');

  static Stream<TextfieldInputRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TextfieldInputRecord._();
  factory TextfieldInputRecord(
          [void Function(TextfieldInputRecordBuilder) updates]) =
      _$TextfieldInputRecord;

  static TextfieldInputRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTextfieldInputRecordData({
  String input,
}) =>
    serializers.toFirestore(TextfieldInputRecord.serializer,
        TextfieldInputRecord((t) => t..input = input));
