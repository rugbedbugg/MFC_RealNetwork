.class public final enum Lcom/bumptech/glide/load/DataSource;
.super Ljava/lang/Enum;
.source "DataSource.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/DataSource;

.field public static final enum DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

.field public static final enum LOCAL:Lcom/bumptech/glide/load/DataSource;

.field public static final enum MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

.field public static final enum REMOTE:Lcom/bumptech/glide/load/DataSource;

.field public static final enum RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;


# direct methods
.method private static synthetic $values()[Lcom/bumptech/glide/load/DataSource;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/load/DataSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 11
    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "REMOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    .line 13
    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "DATA_DISK_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 15
    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "RESOURCE_DISK_CACHE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 17
    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "MEMORY_CACHE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/DataSource;->$values()[Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->$VALUES:[Lcom/bumptech/glide/load/DataSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/DataSource;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/DataSource;

    .line 4
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->$VALUES:[Lcom/bumptech/glide/load/DataSource;

    .line 4
    invoke-virtual {v0}, [Lcom/bumptech/glide/load/DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method
