.class final Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setPointerIcon(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1895
    instance-of v0, p2, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;->getType()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    const-string v0, "getSystemIcon(view.context, icon.type)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x3e8

    .line 1899
    invoke-static {p2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    const-string v0, "getSystemIcon(\n         \u2026DEFAULT\n                )"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1905
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1906
    invoke-static {p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;Landroid/view/PointerIcon;)V

    :cond_1
    return-void
.end method
