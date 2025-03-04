.class public final Landroidx/compose/ui/text/input/ImeAction;
.super Ljava/lang/Object;
.source "ImeAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/ImeAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

.field private static final Default:I

.field private static final Done:I

.field private static final Go:I

.field private static final Next:I

.field private static final None:I

.field private static final Previous:I

.field private static final Search:I

.field private static final Send:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/ImeAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->None:I

    const/4 v0, 0x2

    .line 64
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Go:I

    const/4 v0, 0x3

    .line 70
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    const/4 v0, 0x4

    .line 76
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Send:I

    const/4 v0, 0x5

    .line 83
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Previous:I

    const/4 v0, 0x6

    .line 90
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Next:I

    const/4 v0, 0x7

    .line 98
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/ImeAction;->Done:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/input/ImeAction;->value:I

    return-void
.end method

.method public static final synthetic access$getDefault$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    return v0
.end method

.method public static final synthetic access$getDone$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Done:I

    return v0
.end method

.method public static final synthetic access$getGo$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Go:I

    return v0
.end method

.method public static final synthetic access$getNext$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Next:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->None:I

    return v0
.end method

.method public static final synthetic access$getPrevious$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Previous:I

    return v0
.end method

.method public static final synthetic access$getSearch$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    return v0
.end method

.method public static final synthetic access$getSend$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Send:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/input/ImeAction;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/input/ImeAction;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/text/input/ImeAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

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

    sget v0, Landroidx/compose/ui/text/input/ImeAction;->None:I

    .line 30
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "None"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    .line 31
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Default"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Go:I

    .line 32
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Go"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    .line 33
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Search"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Send:I

    .line 34
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Send"

    goto :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Previous:I

    .line 35
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Previous"

    goto :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Next:I

    .line 36
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Next"

    goto :goto_0

    :cond_6
    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Done:I

    .line 37
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Done"

    goto :goto_0

    :cond_7
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/input/ImeAction;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/input/ImeAction;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/input/ImeAction;->value:I

    .line 28
    invoke-static {v0}, Landroidx/compose/ui/text/input/ImeAction;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/input/ImeAction;->value:I

    return v0
.end method
