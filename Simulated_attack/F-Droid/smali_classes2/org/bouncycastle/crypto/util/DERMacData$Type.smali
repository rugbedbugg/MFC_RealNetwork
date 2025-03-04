.class public final enum Lorg/bouncycastle/crypto/util/DERMacData$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/util/DERMacData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v1, "KC_1_U"

    const-string v2, "UNILATERALU"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v2, "KC_1_V"

    const-string v4, "UNILATERALV"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v2, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v4, "KC_2_U"

    const-string v6, "BILATERALU"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v4, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v6, "KC_2_V"

    const-string v8, "BILATERALV"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v6, 0x4

    new-array v6, v6, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 1

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/DERMacData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method


# virtual methods
.method public getHeader()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
