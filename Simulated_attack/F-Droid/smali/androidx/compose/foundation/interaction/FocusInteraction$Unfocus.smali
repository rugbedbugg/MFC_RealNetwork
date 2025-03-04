.class public final Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
.super Ljava/lang/Object;
.source "FocusInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V
    .locals 1

    const-string v0, "focus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    return-void
.end method


# virtual methods
.method public final getFocus()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    return-object v0
.end method
