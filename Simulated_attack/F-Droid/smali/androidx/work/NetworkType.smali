.class public final enum Landroidx/work/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/NetworkType;

.field public static final enum CONNECTED:Landroidx/work/NetworkType;

.field public static final enum METERED:Landroidx/work/NetworkType;

.field public static final enum NOT_REQUIRED:Landroidx/work/NetworkType;

.field public static final enum NOT_ROAMING:Landroidx/work/NetworkType;

.field public static final enum TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

.field public static final enum UNMETERED:Landroidx/work/NetworkType;


# direct methods
.method private static final synthetic $values()[Landroidx/work/NetworkType;
    .locals 3

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/work/NetworkType;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 32
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 37
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "UNMETERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    .line 42
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "NOT_ROAMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    .line 47
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "METERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    .line 57
    new-instance v0, Landroidx/work/NetworkType;

    const-string v1, "TEMPORARILY_UNMETERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    invoke-static {}, Landroidx/work/NetworkType;->$values()[Landroidx/work/NetworkType;

    move-result-object v0

    sput-object v0, Landroidx/work/NetworkType;->$VALUES:[Landroidx/work/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/NetworkType;
    .locals 1

    .line 0
    const-class v0, Landroidx/work/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/NetworkType;

    return-object p0
.end method

.method public static values()[Landroidx/work/NetworkType;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/NetworkType;->$VALUES:[Landroidx/work/NetworkType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/NetworkType;

    return-object v0
.end method
