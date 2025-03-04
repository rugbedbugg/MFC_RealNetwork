.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFactory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    .line 195
    new-instance p1, Lcom/bumptech/glide/load/model/DirectResourceLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V

    return-object p1
.end method

.method public close(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->close(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    .line 181
    invoke-static {p2, p3, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
