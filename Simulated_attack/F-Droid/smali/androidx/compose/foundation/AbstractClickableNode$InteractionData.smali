.class public final Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
.super Ljava/lang/Object;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/AbstractClickableNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionData"
.end annotation


# instance fields
.field private centreOffset:J

.field private final currentKeyPressInteractions:Ljava/util/Map;

.field private pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->currentKeyPressInteractions:Ljava/util/Map;

    .line 655
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-void
.end method


# virtual methods
.method public final getCentreOffset-F1C5BW0()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-wide v0
.end method

.method public final getCurrentKeyPressInteractions()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->currentKeyPressInteractions:Ljava/util/Map;

    return-object v0
.end method

.method public final getPressInteraction()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object v0
.end method

.method public final setCentreOffset-k-4lQ0M(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->centreOffset:J

    return-void
.end method

.method public final setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method
