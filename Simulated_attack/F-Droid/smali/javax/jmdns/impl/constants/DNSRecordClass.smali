.class public final enum Ljavax/jmdns/impl/constants/DNSRecordClass;
.super Ljava/lang/Enum;
.source "DNSRecordClass.java"


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field public static final enum CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "?"

    const-string v2, "CLASS_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 22
    new-instance v1, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v2, "in"

    const-string v4, "CLASS_IN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 26
    new-instance v2, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v4, "cs"

    const-string v6, "CLASS_CS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v7}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 30
    new-instance v4, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v6, "ch"

    const-string v8, "CLASS_CH"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 34
    new-instance v6, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v8, "hs"

    const-string v10, "CLASS_HS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v11}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 38
    new-instance v8, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v10, "none"

    const/16 v12, 0xfe

    const-string v13, "CLASS_NONE"

    const/4 v14, 0x5

    invoke-direct {v8, v13, v14, v10, v12}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 42
    new-instance v10, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v12, "any"

    const/16 v13, 0xff

    const-string v15, "CLASS_ANY"

    const/4 v14, 0x6

    invoke-direct {v10, v15, v14, v12, v13}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v12, 0x7

    new-array v12, v12, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    const/4 v0, 0x5

    aput-object v8, v12, v0

    aput-object v10, v12, v14

    sput-object v12, Ljavax/jmdns/impl/constants/DNSRecordClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    iput p4, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    return-void
.end method

.method public static classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 6

    and-int/lit16 v0, p0, 0x7fff

    .line 126
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 127
    iget v5, v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    if-ne v5, v0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Lorg/slf4j/Logger;

    const-string v1, "Could not find record class for index: {}"

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 1

    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 14
    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSRecordClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v0
.end method


# virtual methods
.method public indexValue()I
    .locals 1

    .line 0
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    return v0
.end method

.method public isUnique(I)Z
    .locals 1

    .line 0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq p0, v0, :cond_0

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
