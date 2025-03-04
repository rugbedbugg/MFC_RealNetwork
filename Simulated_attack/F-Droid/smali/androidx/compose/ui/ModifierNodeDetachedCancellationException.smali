.class final Landroidx/compose/ui/ModifierNodeDetachedCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Modifier.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The Modifier.Node was detached"

    .line 38
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
