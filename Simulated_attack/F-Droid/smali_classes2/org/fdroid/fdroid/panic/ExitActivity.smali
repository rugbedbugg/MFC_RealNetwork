.class public Lorg/fdroid/fdroid/panic/ExitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExitActivity.java"


# direct methods
.method public static synthetic $r8$lambda$kGDp1_bOTGGVQ8aDu2oqPc3-7Zg(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/ExitActivity;->lambda$exitAndRemoveFromRecentApps$0(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static exitAndRemoveFromRecentApps(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 20
    new-instance v0, Lorg/fdroid/fdroid/panic/ExitActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/panic/ExitActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$exitAndRemoveFromRecentApps$0(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/panic/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10818000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
