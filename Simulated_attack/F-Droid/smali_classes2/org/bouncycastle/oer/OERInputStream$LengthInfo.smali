.class final Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LengthInfo"
.end annotation


# instance fields
.field private final length:Ljava/math/BigInteger;

.field private final shortForm:Z

.field final synthetic this$0:Lorg/bouncycastle/oer/OERInputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERInputStream;Ljava/math/BigInteger;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->this$0:Lorg/bouncycastle/oer/OERInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->length:Ljava/math/BigInteger;

    iput-boolean p3, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->shortForm:Z

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->intLength()I

    move-result p0

    return p0
.end method

.method private intLength()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->length:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method
