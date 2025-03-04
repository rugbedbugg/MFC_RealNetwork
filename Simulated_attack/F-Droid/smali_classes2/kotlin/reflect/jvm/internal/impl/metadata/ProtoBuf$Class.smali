.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;,
        Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
    }
.end annotation


# static fields
.field public static PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

.field private static final defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;


# instance fields
.field private bitField0_:I

.field private companionObjectName_:I

.field private constructor_:Ljava/util/List;

.field private contextReceiverTypeIdMemoizedSerializedSize:I

.field private contextReceiverTypeId_:Ljava/util/List;

.field private contextReceiverType_:Ljava/util/List;

.field private enumEntry_:Ljava/util/List;

.field private flags_:I

.field private fqName_:I

.field private function_:Ljava/util/List;

.field private inlineClassUnderlyingPropertyName_:I

.field private inlineClassUnderlyingTypeId_:I

.field private inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

.field private multiFieldValueClassUnderlyingName_:Ljava/util/List;

.field private multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

.field private multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

.field private multiFieldValueClassUnderlyingType_:Ljava/util/List;

.field private nestedClassNameMemoizedSerializedSize:I

.field private nestedClassName_:Ljava/util/List;

.field private property_:Ljava/util/List;

.field private sealedSubclassFqNameMemoizedSerializedSize:I

.field private sealedSubclassFqName_:Ljava/util/List;

.field private supertypeIdMemoizedSerializedSize:I

.field private supertypeId_:Ljava/util/List;

.field private supertype_:Ljava/util/List;

.field private typeAlias_:Ljava/util/List;

.field private typeParameter_:Ljava/util/List;

.field private typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field private final unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

.field private versionRequirement_:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9000
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    .line 12728
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 12729
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 8628
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    iput-byte v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 8629
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields()V

    .line 8632
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->newOutput()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;

    move-result-object v4

    const/4 v5, 0x1

    .line 8634
    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/high16 v9, 0x80000

    const/high16 v5, 0x400000

    const/high16 v14, 0x100000

    const/high16 v13, 0x40000

    const/16 v11, 0x80

    const/16 v10, 0x40

    if-nez v7, :cond_35

    .line 8639
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readTag()I

    move-result v15

    const/16 v16, 0x0

    sparse-switch v15, :sswitch_data_0

    .line 8645
    invoke-virtual {v1, v2, v6, v3, v15}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v7, 0x1

    goto/16 :goto_3

    :sswitch_0
    iget v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v15, v11

    if-ne v15, v11, :cond_0

    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 8924
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;

    move-result-object v16

    :cond_0
    move-object/from16 v15, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    .line 8926
    :goto_1
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    if-eqz v15, :cond_1

    .line 8928
    invoke-virtual {v15, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;

    .line 8929
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v12

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    :cond_1
    iget v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v12, v11

    iput v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto :goto_3

    .line 8909
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v12

    .line 8910
    invoke-virtual {v2, v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v12

    and-int v15, v8, v5

    if-eq v15, v5, :cond_2

    .line 8911
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_2

    .line 8912
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    or-int/2addr v8, v5

    .line 8915
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_3

    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8916
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x80

    goto :goto_2

    .line 8918
    :cond_3
    invoke-virtual {v2, v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    :cond_4
    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_a

    :sswitch_2
    and-int v11, v8, v5

    if-eq v11, v5, :cond_5

    .line 8902
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    or-int/2addr v8, v5

    :cond_5
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8905
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_3
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_6

    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 8890
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    move-result-object v16

    :cond_6
    move-object/from16 v11, v16

    .line 8892
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    if-eqz v11, :cond_7

    .line 8894
    invoke-virtual {v11, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    .line 8895
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v11

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    :cond_7
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v11, v10

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto :goto_3

    .line 8875
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8876
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int v12, v8, v14

    if-eq v12, v14, :cond_8

    .line 8877
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_8

    .line 8878
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    or-int/2addr v8, v14

    .line 8881
    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_9

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 8882
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8884
    :cond_9
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_3

    :sswitch_5
    and-int v11, v8, v14

    if-eq v11, v14, :cond_a

    .line 8868
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    or-int/2addr v8, v14

    :cond_a
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 8871
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_6
    and-int v11, v8, v9

    if-eq v11, v9, :cond_b

    .line 8860
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    or-int/2addr v8, v9

    :cond_b
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 8863
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 8846
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8847
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int v12, v8, v13

    if-eq v12, v13, :cond_c

    .line 8848
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_c

    .line 8849
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    or-int/2addr v8, v13

    .line 8852
    :cond_c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_d

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 8853
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8855
    :cond_d
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_3

    :sswitch_8
    and-int v11, v8, v13

    if-eq v11, v13, :cond_e

    .line 8839
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    or-int/2addr v8, v13

    :cond_e
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 8842
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 8825
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8826
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int/lit16 v12, v8, 0x100

    const/16 v15, 0x100

    if-eq v12, v15, :cond_f

    .line 8827
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_f

    .line 8828
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    .line 8831
    :cond_f
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_10

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 8832
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 8834
    :cond_10
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_3

    :sswitch_a
    and-int/lit16 v11, v8, 0x100

    const/16 v12, 0x100

    if-eq v11, v12, :cond_11

    .line 8818
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_11
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 8821
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_b
    and-int/lit16 v11, v8, 0x80

    const/16 v12, 0x80

    if-eq v11, v12, :cond_12

    .line 8810
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    :cond_12
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 8813
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_c
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v12, 0x20

    or-int/2addr v11, v12

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8805
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    goto/16 :goto_3

    :sswitch_d
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v12, 0x10

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_13

    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 8793
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v16

    :cond_13
    move-object/from16 v11, v16

    .line 8795
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eqz v11, :cond_14

    .line 8797
    invoke-virtual {v11, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    .line 8798
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v11

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    :cond_14
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v12, 0x10

    or-int/2addr v11, v12

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto/16 :goto_3

    :sswitch_e
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v12, 0x8

    or-int/2addr v11, v12

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8787
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    goto/16 :goto_3

    .line 8773
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8774
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int/lit16 v12, v8, 0x4000

    const/16 v15, 0x4000

    if-eq v12, v15, :cond_15

    .line 8775
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_15

    .line 8776
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    .line 8779
    :cond_15
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_16

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 8780
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 8782
    :cond_16
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_3

    :sswitch_10
    and-int/lit16 v11, v8, 0x4000

    const/16 v12, 0x4000

    if-eq v11, v12, :cond_17

    .line 8766
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_17
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 8769
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_11
    and-int/lit16 v11, v8, 0x2000

    const/16 v12, 0x2000

    if-eq v11, v12, :cond_18

    .line 8758
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x2000

    :cond_18
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 8761
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_12
    and-int/lit16 v11, v8, 0x1000

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_19

    .line 8750
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    :cond_19
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 8753
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_13
    and-int/lit16 v11, v8, 0x800

    const/16 v12, 0x800

    if-eq v11, v12, :cond_1a

    .line 8742
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    :cond_1a
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 8745
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_14
    and-int/lit16 v11, v8, 0x400

    const/16 v12, 0x400

    if-eq v11, v12, :cond_1b

    .line 8734
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    :cond_1b
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 8737
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_15
    and-int/lit16 v11, v8, 0x200

    const/16 v12, 0x200

    if-eq v11, v12, :cond_1c

    .line 8726
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    :cond_1c
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 8729
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 8712
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8713
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int/lit8 v12, v8, 0x40

    if-eq v12, v10, :cond_1d

    .line 8714
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_1d

    .line 8715
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    .line 8718
    :cond_1d
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_1e

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 8719
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 8721
    :cond_1e
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_3

    :sswitch_17
    and-int/lit8 v11, v8, 0x40

    if-eq v11, v10, :cond_1f

    .line 8705
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_1f
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 8708
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_18
    and-int/lit8 v11, v8, 0x10

    const/16 v12, 0x10

    if-eq v11, v12, :cond_20

    .line 8697
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    :cond_20
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 8700
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_19
    and-int/lit8 v11, v8, 0x8

    const/16 v12, 0x8

    if-eq v11, v12, :cond_21

    .line 8689
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    :cond_21
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 8692
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1a
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8684
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    goto/16 :goto_3

    :sswitch_1b
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8679
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    goto/16 :goto_3

    .line 8665
    :sswitch_1c
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 8666
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v11

    and-int/lit8 v12, v8, 0x20

    const/16 v15, 0x20

    if-eq v12, v15, :cond_22

    .line 8667
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_22

    .line 8668
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 8671
    :cond_22
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_23

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 8672
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 8674
    :cond_23
    invoke-virtual {v2, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_3

    :sswitch_1d
    and-int/lit8 v11, v8, 0x20

    const/16 v12, 0x20

    if-eq v11, v12, :cond_24

    .line 8658
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_24
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 8661
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1e
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8653
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :sswitch_1f
    const/4 v12, 0x1

    move v7, v12

    :goto_a
    move v5, v12

    goto/16 :goto_0

    .line 8939
    :goto_b
    :try_start_1
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    .line 8940
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 8937
    :goto_c
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    and-int/lit8 v3, v8, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_25

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 8943
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    :cond_25
    and-int/lit8 v3, v8, 0x8

    const/16 v7, 0x8

    if-ne v3, v7, :cond_26

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 8946
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    :cond_26
    and-int/lit8 v3, v8, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_27

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 8949
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    :cond_27
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v10, :cond_28

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 8952
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    :cond_28
    and-int/lit16 v3, v8, 0x200

    const/16 v7, 0x200

    if-ne v3, v7, :cond_29

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 8955
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    :cond_29
    and-int/lit16 v3, v8, 0x400

    const/16 v7, 0x400

    if-ne v3, v7, :cond_2a

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 8958
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    :cond_2a
    and-int/lit16 v3, v8, 0x800

    const/16 v7, 0x800

    if-ne v3, v7, :cond_2b

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 8961
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    :cond_2b
    and-int/lit16 v3, v8, 0x1000

    const/16 v7, 0x1000

    if-ne v3, v7, :cond_2c

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 8964
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    :cond_2c
    and-int/lit16 v3, v8, 0x2000

    const/16 v7, 0x2000

    if-ne v3, v7, :cond_2d

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 8967
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    :cond_2d
    and-int/lit16 v3, v8, 0x4000

    const/16 v7, 0x4000

    if-ne v3, v7, :cond_2e

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 8970
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    :cond_2e
    and-int/lit16 v3, v8, 0x80

    const/16 v7, 0x80

    if-ne v3, v7, :cond_2f

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 8973
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    :cond_2f
    and-int/lit16 v3, v8, 0x100

    const/16 v7, 0x100

    if-ne v3, v7, :cond_30

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 8976
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    :cond_30
    and-int v3, v8, v13

    if-ne v3, v13, :cond_31

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 8979
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    :cond_31
    and-int v3, v8, v9

    if-ne v3, v9, :cond_32

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 8982
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    :cond_32
    and-int v3, v8, v14

    if-ne v3, v14, :cond_33

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 8985
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    :cond_33
    and-int v3, v8, v5

    if-ne v3, v5, :cond_34

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8988
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8991
    :cond_34
    :try_start_2
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8995
    :catch_2
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 8996
    throw v2

    .line 8997
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    .line 8998
    throw v2

    :cond_35
    and-int/lit8 v2, v8, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_36

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 8943
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    :cond_36
    and-int/lit8 v2, v8, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 8946
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    :cond_37
    and-int/lit8 v2, v8, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_38

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 8949
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    :cond_38
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v10, :cond_39

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 8952
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    :cond_39
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3a

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 8955
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    :cond_3a
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_3b

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 8958
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    :cond_3b
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_3c

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 8961
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    :cond_3c
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3d

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 8964
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    :cond_3d
    and-int/lit16 v2, v8, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_3e

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 8967
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    :cond_3e
    and-int/lit16 v2, v8, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_3f

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 8970
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    :cond_3f
    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_40

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 8973
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    :cond_40
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_41

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 8976
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    :cond_41
    and-int v2, v8, v13

    if-ne v2, v13, :cond_42

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 8979
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    :cond_42
    and-int v2, v8, v9

    if-ne v2, v9, :cond_43

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 8982
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    :cond_43
    and-int v2, v8, v14

    if-ne v2, v14, :cond_44

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 8985
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    :cond_44
    and-int v2, v8, v5

    if-ne v2, v5, :cond_45

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8988
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8991
    :cond_45
    :try_start_3
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8995
    :catch_3
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 8996
    throw v2

    .line 8997
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x38 -> :sswitch_17
        0x3a -> :sswitch_16
        0x42 -> :sswitch_15
        0x4a -> :sswitch_14
        0x52 -> :sswitch_13
        0x5a -> :sswitch_12
        0x6a -> :sswitch_11
        0x80 -> :sswitch_10
        0x82 -> :sswitch_f
        0x88 -> :sswitch_e
        0x92 -> :sswitch_d
        0x98 -> :sswitch_c
        0xa2 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb2 -> :sswitch_7
        0xba -> :sswitch_6
        0xc0 -> :sswitch_5
        0xc2 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$1;)V
    .locals 0

    .line 8603
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1

    .line 8610
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 8611
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$1;)V
    .locals 0

    .line 8603
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8613
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10200(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    return p1
.end method

.method static synthetic access$10502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method static synthetic access$10602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    return p1
.end method

.method static synthetic access$10700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10702(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10800(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10802(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10900(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    return-object p1
.end method

.method static synthetic access$11100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-object p1
.end method

.method static synthetic access$11302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    return p1
.end method

.method static synthetic access$11400(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$8902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    return p1
.end method

.method static synthetic access$9002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    return p1
.end method

.method static synthetic access$9102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8603
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    return p1
.end method

.method static synthetic access$9200(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9400(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9500(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9600(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9702(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9800(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9802(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9900(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8603
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8603
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 9764
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9765
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 9768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 9769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 9770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 9777
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 9779
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 9780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 9781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 9782
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 9783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 9784
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-void
.end method

.method public static newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 10209
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->access$8700()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 10212
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    .line 10185
    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object p0
.end method


# virtual methods
.method public getCompanionObjectName()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    return v0
.end method

.method public getConstructor(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9397
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    return-object p1
.end method

.method public getConstructorCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConstructorList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object v0
.end method

.method public getContextReceiverType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 9339
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method public getContextReceiverTypeCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 9333
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContextReceiverTypeIdList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    return-object v0
.end method

.method public getContextReceiverTypeList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .locals 1

    .line 8603
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object v0

    return-object v0
.end method

.method public getEnumEntry(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9537
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    return-object p1
.end method

.method public getEnumEntryCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9531
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumEntryList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    return v0
.end method

.method public getFqName()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    return v0
.end method

.method public getFunction(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9432
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    return-object p1
.end method

.method public getFunctionCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFunctionList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object v0
.end method

.method public getInlineClassUnderlyingPropertyName()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    return v0
.end method

.method public getInlineClassUnderlyingType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object v0
.end method

.method public getInlineClassUnderlyingTypeId()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    return v0
.end method

.method public getMultiFieldValueClassUnderlyingNameCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 9628
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMultiFieldValueClassUnderlyingNameList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    return-object v0
.end method

.method public getMultiFieldValueClassUnderlyingType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 9663
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method public getMultiFieldValueClassUnderlyingTypeCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 9657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMultiFieldValueClassUnderlyingTypeIdCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 9686
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMultiFieldValueClassUnderlyingTypeIdList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    return-object v0
.end method

.method public getMultiFieldValueClassUnderlyingTypeList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    return-object v0
.end method

.method public getNestedClassNameList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9467
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    return-object p1
.end method

.method public getPropertyCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getSealedSubclassFqNameList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 9984
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9988
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9990
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 9993
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 9996
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 10002
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 10006
    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 10008
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 10010
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 10012
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 10014
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    move v4, v1

    :goto_4
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 10018
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 10020
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 10023
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getNestedClassNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 10026
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    move v1, v2

    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 10030
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 10032
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 10034
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 10036
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0x9

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 10038
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 10040
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xa

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 10042
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 10044
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xb

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 10046
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 10048
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xd

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    move v1, v2

    move v4, v1

    :goto_a
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 10052
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 10054
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    .line 10057
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    .line 10060
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x11

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 10066
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0x12

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 10070
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_13

    const/16 v1, 0x13

    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 10074
    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    move v1, v2

    :goto_b
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 10076
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_14

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 10078
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0x14

    invoke-static {v6, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    move v1, v2

    move v5, v1

    :goto_c
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 10082
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_15

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 10084
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    add-int/2addr v0, v5

    .line 10087
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getContextReceiverTypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x2

    .line 10090
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    move v1, v2

    move v5, v1

    :goto_d
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 10096
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 10098
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    add-int/2addr v0, v5

    .line 10101
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    add-int/lit8 v0, v0, 0x2

    .line 10104
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    move v1, v2

    :goto_e
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 10108
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_19

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 10110
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0x17

    invoke-static {v6, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    move v1, v2

    move v5, v1

    :goto_f
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 10114
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 10116
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    add-int/2addr v0, v5

    .line 10119
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingTypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x2

    .line 10122
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1c

    const/16 v1, 0x1e

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 10128
    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    move v1, v2

    :goto_10
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 10132
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1d

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 10134
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    add-int/2addr v0, v1

    .line 10137
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 10141
    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10143
    :cond_1e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 10144
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    return v0
.end method

.method public getSupertype(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9258
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method public getSupertypeCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupertypeIdList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object v0
.end method

.method public getSupertypeList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeAlias(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9502
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    return-object p1
.end method

.method public getTypeAliasCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeAliasList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9223
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    return-object p1
.end method

.method public getTypeParameterCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeParameterList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    return-object v0
.end method

.method public getVersionRequirementList()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object v0
.end method

.method public getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-object v0
.end method

.method public hasCompanionObjectName()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFlags()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFqName()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingPropertyName()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingType()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingTypeId()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypeTable()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionRequirementTable()Z
    .locals 2

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 9792
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasFqName()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_2
    move v0, v2

    .line 9796
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameterCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 9797
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 9802
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 9803
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertype(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 9808
    :goto_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getContextReceiverTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 9809
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getContextReceiverType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 9814
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructorCount()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 9815
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructor(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v2

    .line 9820
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFunctionCount()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 9821
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFunction(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_b

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    move v0, v2

    .line 9826
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getPropertyCount()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 9827
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getProperty(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_d

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    move v0, v2

    .line 9832
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeAliasCount()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 9833
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeAlias(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_f

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v2

    .line 9838
    :goto_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getEnumEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 9839
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getEnumEntry(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_11

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 9844
    :cond_12
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasInlineClassUnderlyingType()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9845
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getInlineClassUnderlyingType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_13
    move v0, v2

    .line 9850
    :goto_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_15

    .line 9851
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_14

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 9856
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasTypeTable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 9857
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_16

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    .line 9862
    :cond_16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_17
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 10210
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .locals 1

    .line 8603
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilderForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 10214
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .locals 1

    .line 8603
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 7

    .line 9872
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSerializedSize()I

    .line 9875
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->newExtensionWriter()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 9877
    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9879
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    .line 9880
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 9881
    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9883
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9884
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 9887
    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 9890
    invoke-virtual {p1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    move v3, v1

    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9892
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9893
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9895
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9896
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9898
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getNestedClassNameList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/16 v3, 0x3a

    .line 9899
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 9900
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_7
    move v3, v1

    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 9902
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 9903
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_4
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9905
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9906
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9908
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9909
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9911
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9912
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9914
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9915
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9917
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9918
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 9920
    :cond_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x82

    .line 9921
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 9922
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_e
    move v3, v1

    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 9924
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 9925
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x11

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 9928
    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 9931
    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    :cond_11
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    const/16 v2, 0x13

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 9934
    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_12
    move v2, v1

    :goto_a
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 9936
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 9937
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 9939
    :cond_13
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getContextReceiverTypeIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    const/16 v2, 0xaa

    .line 9940
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 9941
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_14
    move v2, v1

    :goto_b
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 9943
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 9944
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 9946
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingNameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/16 v2, 0xb2

    .line 9947
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 9948
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_16
    move v2, v1

    :goto_c
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 9950
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 9951
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    move v2, v1

    :goto_d
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 9953
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 9954
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/16 v5, 0x17

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 9956
    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getMultiFieldValueClassUnderlyingTypeIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    const/16 v2, 0xc2

    .line 9957
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 9958
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_19
    move v2, v1

    :goto_e
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 9960
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1a

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 9961
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1b

    const/16 v2, 0x1e

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 9964
    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    :cond_1b
    :goto_f
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 9966
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 9967
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 9970
    invoke-virtual {p1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    :cond_1d
    const/16 v1, 0x4a38

    .line 9972
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 9973
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method
