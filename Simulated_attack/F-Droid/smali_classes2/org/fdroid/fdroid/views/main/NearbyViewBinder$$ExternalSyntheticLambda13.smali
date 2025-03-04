.class public final synthetic Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/storage/StorageVolume;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$1:Landroid/os/storage/StorageVolume;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$1:Landroid/os/storage/StorageVolume;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticLambda13;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->$r8$lambda$PfgJvnug1KYuSOTmbdsZ7sdy7jg(Landroid/content/Context;Landroid/os/storage/StorageVolume;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
