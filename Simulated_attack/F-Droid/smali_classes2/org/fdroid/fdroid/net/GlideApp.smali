.class public final Lorg/fdroid/fdroid/net/GlideApp;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableHardwareBitmaps()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/bumptech/glide/Glide;->enableHardwareBitmaps()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1}, Lcom/bumptech/glide/Glide;->init(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method public static init(Lcom/bumptech/glide/Glide;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->init(Lcom/bumptech/glide/Glide;)V

    return-void
.end method

.method public static isInitialized()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/bumptech/glide/Glide;->isInitialized()Z

    return-void
.end method

.method public static tearDown()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0

    .line 104
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lorg/fdroid/fdroid/net/GlideRequests;
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/net/GlideRequests;

    return-object p0
.end method
