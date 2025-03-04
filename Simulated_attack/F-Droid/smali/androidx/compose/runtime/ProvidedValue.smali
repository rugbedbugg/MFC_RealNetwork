.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private final canOverride:Z

.field private final compositionLocal:Landroidx/compose/runtime/CompositionLocal;

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "compositionLocal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->value:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-void
.end method


# virtual methods
.method public final getCanOverride()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return v0
.end method

.method public final getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->value:Ljava/lang/Object;

    return-object v0
.end method
