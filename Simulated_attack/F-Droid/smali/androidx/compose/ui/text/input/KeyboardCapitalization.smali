.class public abstract Landroidx/compose/ui/text/input/KeyboardCapitalization;
.super Ljava/lang/Object;
.source "KeyboardCapitalization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;
    }
.end annotation


# static fields
.field private static final Characters:I

.field public static final Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

.field private static final None:I

.field private static final Sentences:I

.field private static final Words:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->None:I

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Characters:I

    const/4 v0, 0x2

    .line 55
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Words:I

    const/4 v0, 0x3

    .line 61
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Sentences:I

    return-void
.end method

.method public static final synthetic access$getCharacters$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Characters:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->None:I

    return v0
.end method

.method public static final synthetic access$getSentences$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Sentences:I

    return v0
.end method

.method public static final synthetic access$getWords$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Words:I

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

    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->None:I

    .line 30
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "None"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Characters:I

    .line 31
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Characters"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Words:I

    .line 32
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Words"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Sentences:I

    .line 33
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Sentences"

    goto :goto_0

    :cond_3
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
