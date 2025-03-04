.class final Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextForegroundStyle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->$default$merge(Landroidx/compose/ui/text/style/TextForegroundStyle;Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/style/TextForegroundStyle;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/style/TextForegroundStyle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;->this$0:Landroidx/compose/ui/text/style/TextForegroundStyle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;->this$0:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 53
    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
