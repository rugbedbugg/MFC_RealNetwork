.class final Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawablePainter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/accompanist/drawablepainter/DrawablePainter;


# direct methods
.method constructor <init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;->this$0:Lcom/google/accompanist/drawablepainter/DrawablePainter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;
    .locals 2

    .line 65
    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;

    iget-object v1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;->this$0:Lcom/google/accompanist/drawablepainter/DrawablePainter;

    invoke-direct {v0, v1}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;->invoke()Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;

    move-result-object v0

    return-object v0
.end method
