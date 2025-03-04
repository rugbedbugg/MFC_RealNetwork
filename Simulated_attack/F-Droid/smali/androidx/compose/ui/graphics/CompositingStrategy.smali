.class public abstract Landroidx/compose/ui/graphics/CompositingStrategy;
.super Ljava/lang/Object;
.source "GraphicsLayerModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/CompositingStrategy$Companion;
    }
.end annotation


# static fields
.field private static final Auto:I

.field public static final Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

.field private static final ModulateAlpha:I

.field private static final Offscreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    const/4 v0, 0x0

    .line 509
    invoke-static {v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Auto:I

    const/4 v0, 0x1

    .line 518
    invoke-static {v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Offscreen:I

    const/4 v0, 0x2

    .line 529
    invoke-static {v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/CompositingStrategy;->ModulateAlpha:I

    return-void
.end method

.method public static final synthetic access$getAuto$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Auto:I

    return v0
.end method

.method public static final synthetic access$getModulateAlpha$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/CompositingStrategy;->ModulateAlpha:I

    return v0
.end method

.method public static final synthetic access$getOffscreen$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Offscreen:I

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompositingStrategy(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
