.class public abstract synthetic Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    return-object p0
.end method
