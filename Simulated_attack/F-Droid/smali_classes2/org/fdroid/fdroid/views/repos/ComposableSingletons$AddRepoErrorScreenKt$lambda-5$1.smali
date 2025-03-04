.class final Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoErrorScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoErrorScreenKt$lambda-5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 120
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoErrorScreenKt.lambda-5.<anonymous> (AddRepoErrorScreen.kt:119)"

    const v3, -0x51defee9

    invoke-static {v3, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    int-to-float p2, p2

    .line 154
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 120
    invoke-static {p2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p2

    new-instance v0, Lorg/fdroid/repo/AddRepoError;

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->IS_ARCHIVE_REPO:Lorg/fdroid/repo/AddRepoError$ErrorType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0x46

    invoke-static {p2, v0, p1, v1}, Lorg/fdroid/fdroid/views/repos/AddRepoErrorScreenKt;->AddRepoErrorScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/AddRepoError;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
