.class final Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RepoUpdateWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/work/RepoUpdateWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.fdroid.fdroid.work.RepoUpdateWorker"
    f = "RepoUpdateWorker.kt"
    l = {
        0x7c,
        0x7c
    }
    m = "doWork"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/fdroid/fdroid/work/RepoUpdateWorker;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/work/RepoUpdateWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/work/RepoUpdateWorker;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->this$0:Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->label:I

    iget-object p1, p0, Lorg/fdroid/fdroid/work/RepoUpdateWorker$doWork$1;->this$0:Lorg/fdroid/fdroid/work/RepoUpdateWorker;

    invoke-virtual {p1, p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
