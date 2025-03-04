.class Lorg/fdroid/fdroid/views/apps/FeatureImage$1;
.super Ljava/lang/Object;
.source "FeatureImage.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/apps/FeatureImage;->loadImageAndExtractColour(Lcom/bumptech/glide/RequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/apps/FeatureImage;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/apps/FeatureImage;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage$1;->this$0:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target;",
            "Z)Z"
        }
    .end annotation

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/FeatureImage$1;->this$0:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    const p2, -0x333334

    .line 262
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->setColorAndAnimateChange(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 259
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lorg/fdroid/fdroid/views/apps/FeatureImage$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
