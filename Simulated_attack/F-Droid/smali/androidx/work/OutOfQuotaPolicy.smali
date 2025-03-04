.class public final enum Landroidx/work/OutOfQuotaPolicy;
.super Ljava/lang/Enum;
.source "OutOfQuotaPolicy.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/OutOfQuotaPolicy;

.field public static final enum DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

.field public static final enum RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;


# direct methods
.method private static final synthetic $values()[Landroidx/work/OutOfQuotaPolicy;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/work/OutOfQuotaPolicy;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroidx/work/OutOfQuotaPolicy;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/OutOfQuotaPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 32
    new-instance v0, Landroidx/work/OutOfQuotaPolicy;

    const-string v1, "DROP_WORK_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/OutOfQuotaPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {}, Landroidx/work/OutOfQuotaPolicy;->$values()[Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->$VALUES:[Landroidx/work/OutOfQuotaPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/OutOfQuotaPolicy;
    .locals 1

    .line 0
    const-class v0, Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/OutOfQuotaPolicy;

    return-object p0
.end method

.method public static values()[Landroidx/work/OutOfQuotaPolicy;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->$VALUES:[Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/OutOfQuotaPolicy;

    return-object v0
.end method
