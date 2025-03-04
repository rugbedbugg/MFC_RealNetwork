.class final Landroidx/work/impl/utils/WakeLocksHolder;
.super Ljava/lang/Object;
.source "WakeLocks.kt"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

.field private static final wakeLocks:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/WakeLocksHolder;

    invoke-direct {v0}, Landroidx/work/impl/utils/WakeLocksHolder;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->wakeLocks:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWakeLocks()Ljava/util/WeakHashMap;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->wakeLocks:Ljava/util/WeakHashMap;

    return-object v0
.end method
