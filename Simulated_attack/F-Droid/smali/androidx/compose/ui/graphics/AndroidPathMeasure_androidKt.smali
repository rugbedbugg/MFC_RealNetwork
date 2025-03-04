.class public abstract Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;
.super Ljava/lang/Object;
.source "AndroidPathMeasure.android.kt"


# direct methods
.method public static final PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 2

    .line 21
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathMeasure;-><init>(Landroid/graphics/PathMeasure;)V

    return-object v0
.end method
