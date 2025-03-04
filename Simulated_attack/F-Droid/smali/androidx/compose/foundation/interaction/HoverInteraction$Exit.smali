.class public final Landroidx/compose/foundation/interaction/HoverInteraction$Exit;
.super Ljava/lang/Object;
.source "HoverInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V
    .locals 1

    const-string v0, "enter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    return-void
.end method


# virtual methods
.method public final getEnter()Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    return-object v0
.end method
