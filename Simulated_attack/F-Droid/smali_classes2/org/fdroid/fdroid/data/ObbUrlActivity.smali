.class public Lorg/fdroid/fdroid/data/ObbUrlActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ObbUrlActivity.java"


# static fields
.field public static final ACTION_GET_OBB_MAIN_URL:Ljava/lang/String; = "org.fdroid.fdroid.action.GET_OBB_MAIN_URL"

.field public static final ACTION_GET_OBB_PATCH_URL:Ljava/lang/String; = "org.fdroid.fdroid.action.GET_OBB_PATCH_URL"

.field public static final EXTRA_SHA256:Ljava/lang/String; = "org.fdroid.fdroid.extra.SHA256"

.field public static final TAG:Ljava/lang/String; = "ObbUrlActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got null APK for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObbUrlActivity"

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
