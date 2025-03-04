.class public final synthetic Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/data/SanitizedFile;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/data/SanitizedFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/data/SanitizedFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
