.class final Landroidx/compose/runtime/Invalidation;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private instances:Landroidx/compose/runtime/collection/IdentityArraySet;

.field private final location:I

.field private final scope:Landroidx/compose/runtime/RecomposeScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Landroidx/compose/runtime/Invalidation;->location:I

    iput-object p3, p0, Landroidx/compose/runtime/Invalidation;->instances:Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method


# virtual methods
.method public final getInstances()Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->instances:Landroidx/compose/runtime/collection/IdentityArraySet;

    return-object v0
.end method

.method public final getLocation()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/Invalidation;->location:I

    return v0
.end method

.method public final getScope()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object v0
.end method

.method public final isInvalid()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v1, p0, Landroidx/compose/runtime/Invalidation;->instances:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 240
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->isInvalidFor(Landroidx/compose/runtime/collection/IdentityArraySet;)Z

    move-result v0

    return v0
.end method

.method public final setInstances(Landroidx/compose/runtime/collection/IdentityArraySet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method
