.class final Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoIntroScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroScreen(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $onAddRepo:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onBackClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onFetchRepo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $state:Lorg/fdroid/repo/AddRepoState;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/AddRepoState;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "I)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$state:Lorg/fdroid/repo/AddRepoState;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onFetchRepo:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onBackClicked:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$state:Lorg/fdroid/repo/AddRepoState;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onFetchRepo:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$onBackClicked:Lkotlin/jvm/functions/Function0;

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroScreen(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
