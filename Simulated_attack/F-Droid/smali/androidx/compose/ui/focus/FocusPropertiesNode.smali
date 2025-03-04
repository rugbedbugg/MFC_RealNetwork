.class final Landroidx/compose/ui/focus/FocusPropertiesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusProperties.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;


# instance fields
.field private focusPropertiesScope:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "focusPropertiesScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesNode;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const-string v0, "focusProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesNode;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    .line 204
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setFocusPropertiesScope(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesNode;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    return-void
.end method
