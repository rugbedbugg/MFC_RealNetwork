.class public final synthetic Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/fdroid/fdroid/data/App;

.field public final synthetic f$3:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/installer/InstallManagerService;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$2:Lorg/fdroid/fdroid/data/App;

    iput-object p4, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$3:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$2:Lorg/fdroid/fdroid/data/App;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda1;->f$3:Lorg/fdroid/fdroid/data/Apk;

    check-cast p1, Landroidx/core/util/Pair;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->$r8$lambda$DsfaYoO7jYNoLAtYkEZb92YPAB0(Lorg/fdroid/fdroid/installer/InstallManagerService;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroidx/core/util/Pair;)V

    return-void
.end method
