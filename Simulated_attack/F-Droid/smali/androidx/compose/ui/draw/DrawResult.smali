.class public final Landroidx/compose/ui/draw/DrawResult;
.super Ljava/lang/Object;
.source "DrawModifier.kt"


# instance fields
.field private block:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/DrawResult;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getBlock$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/draw/DrawResult;->block:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
