// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageStruct extends BaseStruct {
  ChatMessageStruct({
    String? id,
    int? createdAt,
    String? chatId,
    String? message,
    String? customerId,
    bool? isAdm,
    UploadImageStruct? uploadImage,
  })  : _id = id,
        _createdAt = createdAt,
        _chatId = chatId,
        _message = message,
        _customerId = customerId,
        _isAdm = isAdm,
        _uploadImage = uploadImage;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "chat_id" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  set chatId(String? val) => _chatId = val;

  bool hasChatId() => _chatId != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "is_adm" field.
  bool? _isAdm;
  bool get isAdm => _isAdm ?? false;
  set isAdm(bool? val) => _isAdm = val;

  bool hasIsAdm() => _isAdm != null;

  // "upload_image" field.
  UploadImageStruct? _uploadImage;
  UploadImageStruct get uploadImage => _uploadImage ?? UploadImageStruct();
  set uploadImage(UploadImageStruct? val) => _uploadImage = val;

  void updateUploadImage(Function(UploadImageStruct) updateFn) {
    updateFn(_uploadImage ??= UploadImageStruct());
  }

  bool hasUploadImage() => _uploadImage != null;

  static ChatMessageStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        chatId: data['chat_id'] as String?,
        message: data['message'] as String?,
        customerId: data['customer_id'] as String?,
        isAdm: data['is_adm'] as bool?,
        uploadImage: data['upload_image'] is UploadImageStruct
            ? data['upload_image']
            : UploadImageStruct.maybeFromMap(data['upload_image']),
      );

  static ChatMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'chat_id': _chatId,
        'message': _message,
        'customer_id': _customerId,
        'is_adm': _isAdm,
        'upload_image': _uploadImage?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'chat_id': serializeParam(
          _chatId,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'is_adm': serializeParam(
          _isAdm,
          ParamType.bool,
        ),
        'upload_image': serializeParam(
          _uploadImage,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ChatMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        chatId: deserializeParam(
          data['chat_id'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customer_id'],
          ParamType.String,
          false,
        ),
        isAdm: deserializeParam(
          data['is_adm'],
          ParamType.bool,
          false,
        ),
        uploadImage: deserializeStructParam(
          data['upload_image'],
          ParamType.DataStruct,
          false,
          structBuilder: UploadImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChatMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessageStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        chatId == other.chatId &&
        message == other.message &&
        customerId == other.customerId &&
        isAdm == other.isAdm &&
        uploadImage == other.uploadImage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, chatId, message, customerId, isAdm, uploadImage]);
}

ChatMessageStruct createChatMessageStruct({
  String? id,
  int? createdAt,
  String? chatId,
  String? message,
  String? customerId,
  bool? isAdm,
  UploadImageStruct? uploadImage,
}) =>
    ChatMessageStruct(
      id: id,
      createdAt: createdAt,
      chatId: chatId,
      message: message,
      customerId: customerId,
      isAdm: isAdm,
      uploadImage: uploadImage ?? UploadImageStruct(),
    );
