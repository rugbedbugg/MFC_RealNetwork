.class public final synthetic Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/repo/RepoAdder;

.field public final synthetic f$1:Lorg/fdroid/database/NewRepository;

.field public final synthetic f$2:Lorg/fdroid/repo/FetchResult;

.field public final synthetic f$3:Lorg/fdroid/repo/Fetching;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/NewRepository;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/repo/FetchResult;

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$3:Lorg/fdroid/repo/Fetching;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/NewRepository;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/repo/FetchResult;

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda0;->f$3:Lorg/fdroid/repo/Fetching;

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/repo/RepoAdder;->$r8$lambda$aImyOatjDGCVOIqC7FWX2ha_f_o(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/repo/FetchResult;Lorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;

    move-result-object v0

    return-object v0
.end method
