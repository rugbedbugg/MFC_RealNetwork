.class public final synthetic Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/index/RepoManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/index/RepoManager;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/RepoManager;

    iput-object p2, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/RepoManager;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/index/RepoManager$setPreferredRepoId$1;->$r8$lambda$noZ-PgeMYTgKK7UlOOjmojJTwLw(Lorg/fdroid/index/RepoManager;Ljava/lang/String;J)V

    return-void
.end method
