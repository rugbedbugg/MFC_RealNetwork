.class public abstract Landroidx/compose/ui/graphics/BrushKt;
.super Ljava/lang/Object;
.source "Brush.kt"


# direct methods
.method public static final ShaderBrush(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 1

    const-string v0, "shader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    new-instance v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    return-object v0
.end method
