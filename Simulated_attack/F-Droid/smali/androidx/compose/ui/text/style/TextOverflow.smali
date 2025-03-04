.class public abstract Landroidx/compose/ui/text/style/TextOverflow;
.super Ljava/lang/Object;
.source "TextOverflow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextOverflow$Companion;
    }
.end annotation


# static fields
.field private static final Clip:I

.field public static final Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

.field private static final Ellipsis:I

.field private static final Visible:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextOverflow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    const/4 v0, 0x2

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    const/4 v0, 0x3

    .line 69
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextOverflow;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

    return-void
.end method

.method public static final synthetic access$getClip$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    return v0
.end method

.method public static final synthetic access$getEllipsis$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    return v0
.end method

.method public static final synthetic access$getVisible$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

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
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Clip"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    .line 28
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Ellipsis"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->Visible:I

    .line 29
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Visible"

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
