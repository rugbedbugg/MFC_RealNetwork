.class public abstract Landroidx/compose/material/Strings;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/Strings$Companion;
    }
.end annotation


# static fields
.field private static final CloseDrawer:I

.field private static final CloseSheet:I

.field public static final Companion:Landroidx/compose/material/Strings$Companion;

.field private static final DefaultErrorMessage:I

.field private static final ExposedDropdownMenu:I

.field private static final NavigationMenu:I

.field private static final SliderRangeEnd:I

.field private static final SliderRangeStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/Strings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/Strings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    const/4 v0, 0x2

    .line 28
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->CloseSheet:I

    const/4 v0, 0x3

    .line 29
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    const/4 v0, 0x5

    .line 31
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    const/4 v0, 0x6

    .line 32
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    return-void
.end method

.method public static final synthetic access$getCloseDrawer$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    return v0
.end method

.method public static final synthetic access$getCloseSheet$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->CloseSheet:I

    return v0
.end method

.method public static final synthetic access$getDefaultErrorMessage$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    return v0
.end method

.method public static final synthetic access$getExposedDropdownMenu$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    return v0
.end method

.method public static final synthetic access$getNavigationMenu$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    return v0
.end method

.method public static final synthetic access$getSliderRangeEnd$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    return v0
.end method

.method public static final synthetic access$getSliderRangeStart$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    return v0
.end method

.method private static constructor-impl(I)I
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
