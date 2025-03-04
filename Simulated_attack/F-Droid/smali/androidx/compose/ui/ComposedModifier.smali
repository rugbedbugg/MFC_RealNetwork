.class Landroidx/compose/ui/ComposedModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "ComposedModifier.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# instance fields
.field private final factory:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const-string v0, "inspectorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Landroidx/compose/ui/ComposedModifier;->factory:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public synthetic all(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$Element$-CC;->$default$all(Landroidx/compose/ui/Modifier$Element;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$Element$-CC;->$default$foldIn(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getFactory()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/ComposedModifier;->factory:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public synthetic then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$then(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
