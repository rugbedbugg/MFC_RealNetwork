.class public final enum Lorg/bouncycastle/oer/OERDefinition$BaseType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "SEQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v3, "SEQ_OF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v5, "CHOICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v5, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v7, "ENUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v7, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v9, "INT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v11, "OCTET_STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v11, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v13, "OPAQUE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v15, "UTF8_STRING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v15, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v14, "BIT_STRING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v14, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v12, "NULL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v12, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v10, "EXTENSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v8, "ENUM_ITEM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v6, "BOOLEAN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v4, "IS0646String"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v2, "PrintableString"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;->PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v6, "NumericString"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v4, "BMPString"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v2, "UniversalString"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v6, "IA5String"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v4, "VisibleString"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v2, "Switch"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v6, "Supplier"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/16 v6, 0x16

    new-array v6, v6, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    .line 0
    const-class v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, [Lorg/bouncycastle/oer/OERDefinition$BaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method
