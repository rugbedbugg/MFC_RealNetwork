.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentUriTriggers:Ljava/util/Set;

.field private requiredNetworkType:Landroidx/work/NetworkType;

.field private requiresBatteryNotLow:Z

.field private requiresCharging:Z

.field private requiresDeviceIdle:Z

.field private requiresStorageNotLow:Z

.field private triggerContentMaxDelay:J

.field private triggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 303
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Constraints;
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    .line 479
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    iget-wide v3, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    move-object v13, v0

    move-wide v9, v1

    move-wide v11, v3

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-object v13, v0

    move-wide v9, v1

    move-wide v11, v9

    :goto_0
    iget-boolean v5, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    iget-boolean v6, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    iget-object v4, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    iget-boolean v7, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    iget-boolean v8, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    .line 489
    new-instance v0, Landroidx/work/Constraints;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-object v0
.end method

.method public final setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 1

    .line 0
    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method

.method public final setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    return-object p0
.end method

.method public final setRequiresCharging(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    return-object p0
.end method

.method public final setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    return-object p0
.end method

.method public final setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    return-object p0
.end method

.method public final setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    return-object p0
.end method
