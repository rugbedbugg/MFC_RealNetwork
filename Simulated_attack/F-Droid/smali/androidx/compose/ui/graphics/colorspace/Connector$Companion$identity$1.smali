.class public final Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;
.super Landroidx/compose/ui/graphics/colorspace/Connector;
.source "Connector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-direct {p0, p1, p1, p2, v0}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public transformToColor-wmQWz5c$ui_graphics_release(FFFF)J
    .locals 1

    .line 328
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Connector;->getDestination()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p1

    return-wide p1
.end method
