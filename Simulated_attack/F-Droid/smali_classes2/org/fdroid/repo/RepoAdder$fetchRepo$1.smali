.class final Lorg/fdroid/repo/RepoAdder$fetchRepo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RepoAdder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoAdder;->fetchRepo(Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/fdroid/repo/RepoAdder;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/RepoAdder;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->label:I

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepo$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lorg/fdroid/repo/RepoAdder;->access$fetchRepo(Lorg/fdroid/repo/RepoAdder;Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
