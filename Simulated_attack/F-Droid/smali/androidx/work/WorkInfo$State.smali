.class public final enum Landroidx/work/WorkInfo$State;
.super Ljava/lang/Enum;
.source "WorkInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/WorkInfo$State;

.field public static final enum BLOCKED:Landroidx/work/WorkInfo$State;

.field public static final enum CANCELLED:Landroidx/work/WorkInfo$State;

.field public static final enum ENQUEUED:Landroidx/work/WorkInfo$State;

.field public static final enum FAILED:Landroidx/work/WorkInfo$State;

.field public static final enum RUNNING:Landroidx/work/WorkInfo$State;

.field public static final enum SUCCEEDED:Landroidx/work/WorkInfo$State;


# direct methods
.method private static final synthetic $values()[Landroidx/work/WorkInfo$State;
    .locals 3

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/work/WorkInfo$State;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 181
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 186
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 193
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 199
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 205
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "BLOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 211
    new-instance v0, Landroidx/work/WorkInfo$State;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    invoke-static {}, Landroidx/work/WorkInfo$State;->$values()[Landroidx/work/WorkInfo$State;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkInfo$State;->$VALUES:[Landroidx/work/WorkInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 1

    .line 0
    const-class v0, Landroidx/work/WorkInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/WorkInfo$State;

    return-object p0
.end method

.method public static values()[Landroidx/work/WorkInfo$State;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/WorkInfo$State;->$VALUES:[Landroidx/work/WorkInfo$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/WorkInfo$State;

    return-object v0
.end method


# virtual methods
.method public final isFinished()Z
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
