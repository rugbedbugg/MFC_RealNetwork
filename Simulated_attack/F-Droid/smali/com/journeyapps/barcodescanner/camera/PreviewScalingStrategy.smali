.class public abstract Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.super Ljava/lang/Object;
.source "PreviewScalingStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewScalingStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestPreviewOrder(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Ljava/util/List;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 58
    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;

    invoke-direct {v0, p0, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->getBestPreviewOrder(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->TAG:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewfinder size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview in order of preference: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    return-object p1
.end method

.method protected abstract getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
.end method

.method public abstract scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
.end method
