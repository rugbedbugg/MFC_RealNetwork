.class public final enum Lorg/slf4j/event/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/slf4j/event/Level;

.field public static final enum DEBUG:Lorg/slf4j/event/Level;

.field public static final enum ERROR:Lorg/slf4j/event/Level;

.field public static final enum INFO:Lorg/slf4j/event/Level;

.field public static final enum TRACE:Lorg/slf4j/event/Level;

.field public static final enum WARN:Lorg/slf4j/event/Level;


# instance fields
.field private final levelInt:I

.field private final levelStr:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/slf4j/event/Level;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    sget-object v2, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/slf4j/event/Level;

    const/16 v1, 0x28

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    const-string v4, "WARN"

    invoke-direct {v0, v4, v1, v2, v4}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    const/4 v1, 0x2

    const/16 v2, 0x14

    const-string v4, "INFO"

    invoke-direct {v0, v4, v1, v2, v4}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    const/4 v1, 0x3

    const/16 v2, 0xa

    const-string v4, "DEBUG"

    invoke-direct {v0, v4, v1, v2, v4}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    const-string v1, "TRACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v1}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    .line 16
    invoke-static {}, Lorg/slf4j/event/Level;->$values()[Lorg/slf4j/event/Level;

    move-result-object v0

    sput-object v0, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/slf4j/event/Level;->levelInt:I

    iput-object p4, p0, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/slf4j/event/Level;
    .locals 1

    const-class v0, Lorg/slf4j/event/Level;

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/slf4j/event/Level;

    return-object p0
.end method

.method public static values()[Lorg/slf4j/event/Level;
    .locals 1

    sget-object v0, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    .line 16
    invoke-virtual {v0}, [Lorg/slf4j/event/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/slf4j/event/Level;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/slf4j/event/Level;->levelInt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    return-object v0
.end method
