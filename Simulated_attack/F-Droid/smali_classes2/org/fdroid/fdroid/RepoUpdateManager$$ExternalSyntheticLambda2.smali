.class public final synthetic Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/index/TempFileProvider;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/RepoUpdateManager;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/RepoUpdateManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/RepoUpdateManager;

    return-void
.end method


# virtual methods
.method public final createTempFile()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/RepoUpdateManager;

    invoke-static {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->$r8$lambda$K8k6laC9tAuWDFIkzR7qI5woFgw(Lorg/fdroid/fdroid/RepoUpdateManager;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
