.class public Lorg/apache/commons/net/util/SubnetUtils;
.super Ljava/lang/Object;
.source "SubnetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    }
.end annotation


# static fields
.field private static final addressPattern:Ljava/util/regex/Pattern;

.field private static final cidrPattern:Ljava/util/regex/Pattern;


# instance fields
.field private address:I

.field private broadcast:I

.field private inclusiveHostCount:Z

.field private netmask:I

.field private network:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calculate(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    .line 258
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    const/4 p1, 0x5

    .line 264
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    rsub-int/lit8 v2, v1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    not-int v0, v0

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return-void

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private format([I)Ljava/lang/String;
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 320
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 321
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "."

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private matchAddress(Ljava/util/regex/Matcher;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    .line 298
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xff

    invoke-direct {p0, v3, v0, v4}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v3

    and-int/2addr v3, v4

    rsub-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private rangeCheck(III)I
    .locals 3

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return p1

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] not in range ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toArray(I)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    .line 310
    aget v2, v0, v1

    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->pop(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toInteger(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    .line 283
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result p1

    return p1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    .locals 2

    .line 252
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method

.method public isInclusiveHostCount()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return v0
.end method

.method pop(I)I
    .locals 2

    .line 0
    ushr-int/lit8 v0, p1, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    const v0, 0x33333333

    and-int v1, p1, v0

    ushr-int/lit8 p1, p1, 0x2

    and-int/2addr p1, v0

    add-int/2addr v1, p1

    ushr-int/lit8 p1, v1, 0x4

    add-int/2addr v1, p1

    const p1, 0xf0f0f0f

    and-int/2addr p1, v1

    ushr-int/lit8 v0, p1, 0x8

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    add-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x3f

    return p1
.end method
