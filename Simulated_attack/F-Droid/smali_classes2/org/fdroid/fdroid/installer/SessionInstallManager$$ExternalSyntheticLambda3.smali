.class public final synthetic Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageInstaller;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/PackageInstaller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/PackageInstaller;

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->$r8$lambda$nYUypgc3jYKrmMPerHchSuhvoQ0(Landroid/content/pm/PackageInstaller;)V

    return-void
.end method
