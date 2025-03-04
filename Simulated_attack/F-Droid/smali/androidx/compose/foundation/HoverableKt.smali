.class public abstract Landroidx/compose/foundation/HoverableKt;
.super Ljava/lang/Object;
.source "Hoverable.kt"


# direct methods
.method public static final hoverable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 43
    new-instance p2, Landroidx/compose/foundation/HoverableElement;

    invoke-direct {p2, p1}, Landroidx/compose/foundation/HoverableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
