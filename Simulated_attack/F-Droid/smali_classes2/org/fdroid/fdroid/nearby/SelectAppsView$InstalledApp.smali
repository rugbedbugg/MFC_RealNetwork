.class Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;
.super Ljava/lang/Object;
.source "SelectAppsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SelectAppsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstalledApp"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 219
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->name:Ljava/lang/String;

    return-void
.end method
