.class public final Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$Api30Impl;
    }
.end annotation


# static fields
.field public static final AD_SERVICES_EXTENSION_INT:I

.field public static final INSTANCE:Landroidx/core/os/BuildCompat;

.field public static final R_EXTENSION_INT:I

.field public static final S_EXTENSION_INT:I

.field public static final T_EXTENSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/core/os/BuildCompat;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat;->INSTANCE:Landroidx/core/os/BuildCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 289
    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    invoke-virtual {v3, v2}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sput v3, Landroidx/core/os/BuildCompat;->R_EXTENSION_INT:I

    if-lt v0, v2, :cond_1

    .line 304
    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sput v3, Landroidx/core/os/BuildCompat;->S_EXTENSION_INT:I

    if-lt v0, v2, :cond_2

    .line 320
    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput v3, Landroidx/core/os/BuildCompat;->T_EXTENSION_INT:I

    if-lt v0, v2, :cond_3

    .line 336
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v1

    :cond_3
    sput v1, Landroidx/core/os/BuildCompat;->AD_SERVICES_EXTENSION_INT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "codename"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildCodename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "REL"

    .line 48
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final isAtLeastT()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 221
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Tiramisu"

    .line 219
    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
