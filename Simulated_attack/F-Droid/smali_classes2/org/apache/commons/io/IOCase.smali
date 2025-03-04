.class public final enum Lorg/apache/commons/io/IOCase;
.super Ljava/lang/Enum;
.source "IOCase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/IOCase;

.field public static final enum INSENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SYSTEM:Lorg/apache/commons/io/IOCase;


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lorg/apache/commons/io/IOCase;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    const-string v3, "Sensitive"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 46
    new-instance v1, Lorg/apache/commons/io/IOCase;

    const-string v3, "INSENSITIVE"

    const-string v5, "Insensitive"

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 60
    new-instance v3, Lorg/apache/commons/io/IOCase;

    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v5

    xor-int/2addr v5, v4

    const-string v6, "SYSTEM"

    const/4 v7, 0x2

    const-string v8, "System"

    invoke-direct {v3, v6, v7, v8, v5}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/io/IOCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    sput-object v5, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .locals 1

    const-class v0, Lorg/apache/commons/io/IOCase;

    .line 36
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/IOCase;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/IOCase;
    .locals 1

    sget-object v0, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    .line 36
    invoke-virtual {v0}, [Lorg/apache/commons/io/IOCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/IOCase;

    return-object v0
.end method


# virtual methods
.method public checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    :goto_0
    if-gt p2, v0, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    xor-int/lit8 v2, v0, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
