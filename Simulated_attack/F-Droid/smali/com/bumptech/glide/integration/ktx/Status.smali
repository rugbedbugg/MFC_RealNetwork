.class public final enum Lcom/bumptech/glide/integration/ktx/Status;
.super Ljava/lang/Enum;
.source "Flows.kt"


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/integration/ktx/Status;

.field public static final enum CLEARED:Lcom/bumptech/glide/integration/ktx/Status;

.field public static final enum FAILED:Lcom/bumptech/glide/integration/ktx/Status;

.field public static final enum RUNNING:Lcom/bumptech/glide/integration/ktx/Status;

.field public static final enum SUCCEEDED:Lcom/bumptech/glide/integration/ktx/Status;


# direct methods
.method private static final synthetic $values()[Lcom/bumptech/glide/integration/ktx/Status;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bumptech/glide/integration/ktx/Status;

    const/4 v1, 0x0

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->CLEARED:Lcom/bumptech/glide/integration/ktx/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->RUNNING:Lcom/bumptech/glide/integration/ktx/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->SUCCEEDED:Lcom/bumptech/glide/integration/ktx/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bumptech/glide/integration/ktx/Status;->FAILED:Lcom/bumptech/glide/integration/ktx/Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/bumptech/glide/integration/ktx/Status;

    const-string v1, "CLEARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/ktx/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/integration/ktx/Status;->CLEARED:Lcom/bumptech/glide/integration/ktx/Status;

    .line 46
    new-instance v0, Lcom/bumptech/glide/integration/ktx/Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/ktx/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/integration/ktx/Status;->RUNNING:Lcom/bumptech/glide/integration/ktx/Status;

    .line 51
    new-instance v0, Lcom/bumptech/glide/integration/ktx/Status;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/ktx/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/integration/ktx/Status;->SUCCEEDED:Lcom/bumptech/glide/integration/ktx/Status;

    .line 53
    new-instance v0, Lcom/bumptech/glide/integration/ktx/Status;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/integration/ktx/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/integration/ktx/Status;->FAILED:Lcom/bumptech/glide/integration/ktx/Status;

    invoke-static {}, Lcom/bumptech/glide/integration/ktx/Status;->$values()[Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/ktx/Status;->$VALUES:[Lcom/bumptech/glide/integration/ktx/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/integration/ktx/Status;
    .locals 1

    .line 0
    const-class v0, Lcom/bumptech/glide/integration/ktx/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/integration/ktx/Status;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/integration/ktx/Status;
    .locals 1

    .line 0
    sget-object v0, Lcom/bumptech/glide/integration/ktx/Status;->$VALUES:[Lcom/bumptech/glide/integration/ktx/Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/integration/ktx/Status;

    return-object v0
.end method
