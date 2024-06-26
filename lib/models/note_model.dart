import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
 @HiveField(0)
 late final String title;
 @HiveField(1)
 late final String subTitle;
 @HiveField(2)

 late final String date;
 @HiveField(3)

 late final int color;
 NoteModel({required this.title,required this.subTitle,required this.color,required this.date});

}