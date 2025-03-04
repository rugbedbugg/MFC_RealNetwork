.class public final Landroidx/compose/ui/text/font/FontFamily$Companion;
.super Ljava/lang/Object;
.source "FontFamily.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontFamily;
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
    invoke-direct {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCursive()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 142
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getCursive$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v0

    return-object v0
.end method

.method public final getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getDefault$cp()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object v0

    return-object v0
.end method

.method public final getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 130
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getMonospace$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v0

    return-object v0
.end method

.method public final getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 112
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSansSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v0

    return-object v0
.end method

.method public final getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 121
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v0

    return-object v0
.end method
