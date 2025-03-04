.class public final Landroidx/compose/foundation/interaction/PressInteraction$Press;
.super Ljava/lang/Object;
.source "PressInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final pressPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/interaction/PressInteraction$Press;->pressPosition:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getPressPosition-F1C5BW0()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/foundation/interaction/PressInteraction$Press;->pressPosition:J

    return-wide v0
.end method
