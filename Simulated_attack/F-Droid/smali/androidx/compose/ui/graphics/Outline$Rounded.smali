.class public final Landroidx/compose/ui/graphics/Outline$Rounded;
.super Landroidx/compose/ui/graphics/Outline;
.source "Outline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Outline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rounded"
.end annotation


# instance fields
.field private final roundRect:Landroidx/compose/ui/geometry/RoundRect;

.field private final roundRectPath:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/geometry/RoundRect;)V
    .locals 2

    const-string v0, "roundRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Outline;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 74
    invoke-static {p1}, Landroidx/compose/ui/graphics/OutlineKt;->access$hasSameCornerRadius(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 88
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object p1, p1, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRoundRect()Landroidx/compose/ui/geometry/RoundRect;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    return-object v0
.end method

.method public final getRoundRectPath$ui_graphics_release()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->hashCode()I

    move-result v0

    return v0
.end method
