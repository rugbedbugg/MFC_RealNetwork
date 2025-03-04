.class public final synthetic Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/installer/InstallManagerService;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/installer/InstallManagerService;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/InstallManagerService$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->$r8$lambda$GgbUpKoEfVvRs_oMJDyrBflKcrU(Lorg/fdroid/fdroid/installer/InstallManagerService;Lorg/fdroid/fdroid/data/Apk;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method
