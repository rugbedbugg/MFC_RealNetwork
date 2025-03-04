.class public final Lio/ktor/util/pipeline/StackWalkingFailed;
.super Ljava/lang/Object;
.source "StackWalkingFailed.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/util/pipeline/StackWalkingFailed;

    invoke-direct {v0}, Lio/ktor/util/pipeline/StackWalkingFailed;-><init>()V

    sput-object v0, Lio/ktor/util/pipeline/StackWalkingFailed;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final failedToCaptureStackFrame()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to capture stack frame. This is usually happens when a coroutine is running so the frame stack is changing quickly and the coroutine debug agent is unable to capture it concurrently. You may retry running your test to see this particular trace."

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
