.class public abstract Landroidx/compose/ui/text/style/LineHeightStyle$Trim;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineHeightStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;
    }
.end annotation


# static fields
.field private static final Both:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

.field private static final FirstLineTop:I

.field private static final LastLineBottom:I

.field private static final None:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->FirstLineTop:I

    const/16 v0, 0x10

    .line 138
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->LastLineBottom:I

    const/16 v0, 0x11

    .line 158
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

    const/4 v0, 0x0

    .line 178
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->None:I

    return-void
.end method

.method public static final synthetic access$getBoth$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

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

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final isTrimFirstLineTop-impl$ui_text_release(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isTrimLastLineBottom-impl$ui_text_release(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->FirstLineTop:I

    if-ne p0, v0, :cond_0

    const-string p0, "LineHeightStyle.Trim.FirstLineTop"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->LastLineBottom:I

    if-ne p0, v0, :cond_1

    const-string p0, "LineHeightStyle.Trim.LastLineBottom"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Both:I

    if-ne p0, v0, :cond_2

    const-string p0, "LineHeightStyle.Trim.Both"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->None:I

    if-ne p0, v0, :cond_3

    const-string p0, "LineHeightStyle.Trim.None"

    goto :goto_0

    :cond_3
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
