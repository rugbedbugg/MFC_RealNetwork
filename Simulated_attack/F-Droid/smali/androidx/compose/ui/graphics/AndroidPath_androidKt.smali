.class public abstract Landroidx/compose/ui/graphics/AndroidPath_androidKt;
.super Ljava/lang/Object;
.source "AndroidPath.android.kt"


# direct methods
.method public static final Path()Landroidx/compose/ui/graphics/Path;
    .locals 3

    .line 23
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
