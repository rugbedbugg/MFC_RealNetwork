.class public final synthetic Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/repo/RepoAdder;

.field public final synthetic f$1:Lorg/fdroid/database/NewRepository;

.field public final synthetic f$2:Lorg/fdroid/database/Repository;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/NewRepository;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/Repository;

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/NewRepository;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/Repository;

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$r8$lambda$qVKBxfWyt1h7YW9ObnExgGXM7m8(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
