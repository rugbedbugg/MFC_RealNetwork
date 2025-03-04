.class public final Landroidx/compose/foundation/interaction/PressInteraction$Cancel;
.super Ljava/lang/Object;
.source "PressInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final press:Landroidx/compose/foundation/interaction/PressInteraction$Press;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1

    const-string v0, "press"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method


# virtual methods
.method public final getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object v0
.end method
