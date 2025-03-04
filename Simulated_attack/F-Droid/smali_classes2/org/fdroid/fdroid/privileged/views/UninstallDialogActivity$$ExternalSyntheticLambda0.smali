.class public final synthetic Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/App;

.field public final synthetic f$2:Lorg/fdroid/fdroid/data/Apk;

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/App;

    iput-object p3, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/fdroid/data/Apk;

    iput-object p4, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/fdroid/data/Apk;

    iget-object v3, p0, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;->$r8$lambda$3iAWS9B7r6BgFvvYEiGE_8LUxKQ(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method
