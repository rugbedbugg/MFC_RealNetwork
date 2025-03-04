.class public final synthetic Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/repo/RepoAdder;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/fdroid/repo/Fetching;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/repo/RepoAdder;

    iput-wide p2, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$2:Lorg/fdroid/repo/Fetching;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/repo/RepoAdder;

    iget-wide v1, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$$ExternalSyntheticLambda1;->f$2:Lorg/fdroid/repo/Fetching;

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/repo/RepoAdder;->$r8$lambda$4FEF7b9RRjFvH3hZXXshEkMMZgE(Lorg/fdroid/repo/RepoAdder;JLorg/fdroid/repo/Fetching;)Lorg/fdroid/database/Repository;

    move-result-object v0

    return-object v0
.end method
