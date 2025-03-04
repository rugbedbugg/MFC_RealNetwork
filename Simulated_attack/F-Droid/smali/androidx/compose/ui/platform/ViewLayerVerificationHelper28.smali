.class final Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;
.super Ljava/lang/Object;
.source "ViewLayer.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/ViewLayerVerificationHelper28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setOutlineAmbientShadowColor(Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-static {p1, p2}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;I)V

    return-void
.end method

.method public final setOutlineSpotShadowColor(Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-static {p1, p2}, Landroidx/compose/ui/platform/ViewLayerVerificationHelper28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;I)V

    return-void
.end method
