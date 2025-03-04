.class public final Lio/ktor/websocket/NonDisposableHandle;
.super Ljava/lang/Object;
.source "FrameCommon.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# static fields
.field public static final INSTANCE:Lio/ktor/websocket/NonDisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/websocket/NonDisposableHandle;

    invoke-direct {v0}, Lio/ktor/websocket/NonDisposableHandle;-><init>()V

    sput-object v0, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
