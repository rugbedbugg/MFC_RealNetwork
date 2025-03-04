.class public final Landroidx/compose/ui/platform/InspectableModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "InspectableValue.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/InspectableModifier$End;
    }
.end annotation


# instance fields
.field private final end:Landroidx/compose/ui/platform/InspectableModifier$End;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "inspectorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 168
    new-instance p1, Landroidx/compose/ui/platform/InspectableModifier$End;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/InspectableModifier$End;-><init>(Landroidx/compose/ui/platform/InspectableModifier;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

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

.method public final getEnd()Landroidx/compose/ui/platform/InspectableModifier$End;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

    return-object v0
.end method

.method public synthetic then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$then(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
