.class public final Landroidx/compose/ui/platform/RenderNodeApi29;
.super Ljava/lang/Object;
.source "RenderNodeApi29.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/DeviceRenderNode;


# instance fields
.field private internalCompositingStrategy:I

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final renderNode:Landroid/graphics/RenderNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    const-string v0, "ownerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    const-string p1, "Compose"

    .line 34
    invoke-static {p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline38;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 38
    sget-object p1, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->internalCompositingStrategy:I

    return-void
.end method


# virtual methods
.method public discardDisplayList()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 262
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline26;->m(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public drawInto(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 226
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline11;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 144
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)F

    move-result v0

    return v0
.end method

.method public getBottom()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 49
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline32;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getClipToBounds()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 138
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline36;->m(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public getClipToOutline()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 132
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline34;->m(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 78
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/RenderNode;)F

    move-result v0

    return v0
.end method

.method public getHasDisplayList()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 181
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline19;->m(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline22;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline12;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 218
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline30;->m(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getRight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline35;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline29;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 50
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 192
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline25;->m(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 196
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline14;->m(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    const-string v0, "canvasHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 204
    invoke-static {v0}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "renderNode.beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 206
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 207
    invoke-static {v0, p2, v4, v2, v3}, Landroidx/compose/ui/graphics/Canvas$-CC;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 209
    :cond_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 211
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 214
    invoke-static {p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 146
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline20;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setAmbientShadowColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 86
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 116
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline9;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 140
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline21;->m(Landroid/graphics/RenderNode;Z)Z

    return-void
.end method

.method public setClipToOutline(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 134
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline37;->m(Landroid/graphics/RenderNode;Z)Z

    return-void
.end method

.method public setCompositingStrategy-aDBOjCE(I)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 163
    sget-object v1, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getOffscreen--NrFUSI()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 164
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 165
    invoke-static {v0, v4}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getModulateAlpha--NrFUSI()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 168
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 169
    invoke-static {v0, v2}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 173
    invoke-static {v0, v4}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;Z)Z

    :goto_0
    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->internalCompositingStrategy:I

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 80
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline10;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setHasOverlappingRendering(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 230
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;Z)Z

    move-result p1

    return p1
.end method

.method public setOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 184
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 122
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline27;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 128
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline16;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setPosition(IIII)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 188
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline33;->m(Landroid/graphics/RenderNode;IIII)Z

    move-result p1

    return p1
.end method

.method public setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 154
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/RenderNodeApi29VerificationHelper;->setRenderEffect(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 104
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 110
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setRotationZ(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 98
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline17;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 56
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline23;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 62
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline31;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setSpotShadowColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 92
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline13;->m(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 68
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline15;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi29;->renderNode:Landroid/graphics/RenderNode;

    .line 74
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/RenderNodeApi29$$ExternalSyntheticApiModelOutline18;->m(Landroid/graphics/RenderNode;F)Z

    return-void
.end method
