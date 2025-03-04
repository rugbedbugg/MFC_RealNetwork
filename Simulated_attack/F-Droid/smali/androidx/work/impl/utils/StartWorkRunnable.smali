.class public final Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "StartWorkRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final processor:Landroidx/work/impl/Processor;

.field private final runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private final startStopToken:Landroidx/work/impl/StartStopToken;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startStopToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->startStopToken:Landroidx/work/impl/StartStopToken;

    iput-object p3, p0, Landroidx/work/impl/utils/StartWorkRunnable;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->startStopToken:Landroidx/work/impl/StartStopToken;

    iget-object v2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)Z

    return-void
.end method
