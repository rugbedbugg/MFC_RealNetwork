.class public final Landroidx/compose/foundation/MagnifierStyle$Companion;
.super Ljava/lang/Object;
.source "Magnifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/MagnifierStyle;
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
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierStyle$Companion;-><init>()V

    return-void
.end method

.method public static synthetic isStyleSupported$foundation_release$default(Landroidx/compose/foundation/MagnifierStyle$Companion;Landroidx/compose/foundation/MagnifierStyle;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierStyle$Companion;->isStyleSupported$foundation_release(Landroidx/compose/foundation/MagnifierStyle;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getDefault()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 156
    invoke-static {}, Landroidx/compose/foundation/MagnifierStyle;->access$getDefault$cp()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v0

    return-object v0
.end method

.method public final getTextDefault()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 165
    invoke-static {}, Landroidx/compose/foundation/MagnifierStyle;->access$getTextDefault$cp()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v0

    return-object v0
.end method

.method public final isStyleSupported$foundation_release(Landroidx/compose/foundation/MagnifierStyle;I)Z
    .locals 3

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p2}, Landroidx/compose/foundation/MagnifierKt;->isPlatformMagnifierSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getFishEyeEnabled$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->getUseTextDefault$foundation_release()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getDefault()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x1d

    if-lt p2, p1, :cond_4

    :cond_3
    :goto_0
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method
