.class public abstract Landroidx/compose/runtime/ProvidableCompositionLocal;
.super Landroidx/compose/runtime/CompositionLocal;
.source "CompositionLocal.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "defaultFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
    .locals 2

    .line 98
    new-instance v0, Landroidx/compose/runtime/ProvidedValue;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
    .locals 2

    .line 108
    new-instance v0, Landroidx/compose/runtime/ProvidedValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;Z)V

    return-object v0
.end method
