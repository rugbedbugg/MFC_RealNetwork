.class final Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;
.super Ljava/lang/Object;
.source "RenderNodeApi23.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;

    invoke-direct {v0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final discardDisplayList(Landroid/view/RenderNode;)V
    .locals 1

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroid/view/RenderNode;->discardDisplayList()V

    return-void
.end method
