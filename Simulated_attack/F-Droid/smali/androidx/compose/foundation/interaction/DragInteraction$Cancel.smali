.class public final Landroidx/compose/foundation/interaction/DragInteraction$Cancel;
.super Ljava/lang/Object;
.source "DragInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final start:Landroidx/compose/foundation/interaction/DragInteraction$Start;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    return-void
.end method


# virtual methods
.method public final getStart()Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    return-object v0
.end method
