.class public final Landroidx/compose/ui/input/pointer/PointerInputEvent;
.super Ljava/lang/Object;
.source "PointerInputEvent.android.kt"


# instance fields
.field private final motionEvent:Landroid/view/MotionEvent;

.field private final pointers:Ljava/util/List;

.field private final uptime:J


# direct methods
.method public constructor <init>(JLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "pointers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->uptime:J

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->pointers:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->motionEvent:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->motionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final getPointers()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->pointers:Ljava/util/List;

    return-object v0
.end method
