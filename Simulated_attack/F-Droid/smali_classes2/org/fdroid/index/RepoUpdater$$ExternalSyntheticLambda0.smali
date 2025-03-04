.class public final synthetic Lorg/fdroid/index/RepoUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/index/TempFileProvider;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/RepoUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final createTempFile()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/RepoUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    invoke-static {v0}, Lorg/fdroid/index/RepoUpdater;->$r8$lambda$gVwlg7SDQ88CI2S1ch7wGhuANKg(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
