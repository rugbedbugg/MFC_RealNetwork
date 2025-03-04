.class public final synthetic Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/RepoUpdateManager;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/RepoUpdateManager;

    iput-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/RepoUpdateManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/RepoUpdateManager;->$r8$lambda$rBaigBdI5TxxNknN7mq0vN_i7sk(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V

    return-void
.end method
