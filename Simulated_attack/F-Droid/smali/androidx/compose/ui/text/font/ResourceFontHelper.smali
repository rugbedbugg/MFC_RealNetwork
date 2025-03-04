.class final Landroidx/compose/ui/text/font/ResourceFontHelper;
.super Ljava/lang/Object;
.source "AndroidFontLoader.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/ResourceFontHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/font/ResourceFontHelper;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/ResourceFontHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/ResourceFontHelper;->INSTANCE:Landroidx/compose/ui/text/font/ResourceFontHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Landroid/content/Context;Landroidx/compose/ui/text/font/ResourceFont;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "font"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/ResourceFont;->getResId()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/font/ResourceFontHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p1

    const-string p2, "context.resources.getFont(font.resId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
