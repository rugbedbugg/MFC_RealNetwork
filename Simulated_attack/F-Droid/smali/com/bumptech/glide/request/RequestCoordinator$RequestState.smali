.class public final enum Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
.super Ljava/lang/Enum;
.source "RequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;


# instance fields
.field private final isComplete:Z


# direct methods
.method private static synthetic $values()[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const/4 v1, 0x0

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 53
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const-string v1, "PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 54
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const-string v1, "CLEARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 55
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 56
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 51
    invoke-static {}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->$values()[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
    .locals 1

    const-class v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 51
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 51
    invoke-virtual {v0}, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-object v0
.end method


# virtual methods
.method isComplete()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return v0
.end method
