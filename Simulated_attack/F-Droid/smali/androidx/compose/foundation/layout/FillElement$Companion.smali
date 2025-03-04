.class public final Landroidx/compose/foundation/layout/FillElement$Companion;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/FillElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/foundation/layout/FillElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final height(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    .line 653
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 654
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxHeight"

    .line 653
    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method

.method public final size(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    .line 660
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 661
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxSize"

    .line 660
    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method

.method public final width(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    .line 646
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 647
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxWidth"

    .line 646
    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method
