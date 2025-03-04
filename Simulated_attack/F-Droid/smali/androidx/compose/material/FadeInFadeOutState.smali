.class final Landroidx/compose/material/FadeInFadeOutState;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"


# instance fields
.field private current:Ljava/lang/Object;

.field private items:Ljava/util/List;

.field private scope:Landroidx/compose/runtime/RecomposeScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCurrent()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScope;

    return-object v0
.end method

.method public final setCurrent(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/FadeInFadeOutState;->current:Ljava/lang/Object;

    return-void
.end method

.method public final setScope(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScope;

    return-void
.end method
