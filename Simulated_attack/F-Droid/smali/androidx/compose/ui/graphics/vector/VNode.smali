.class public abstract Landroidx/compose/ui/graphics/vector/VNode;
.super Ljava/lang/Object;
.source "Vector.kt"


# instance fields
.field private invalidateListener:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
.end method

.method public getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VNode;->invalidateListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VNode;->invalidateListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
