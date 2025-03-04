.class public abstract Lkotlin/time/DurationJvmKt;
.super Ljava/lang/Object;
.source "DurationJvm.kt"


# static fields
.field private static final durationAssertionsEnabled:Z = false

.field private static final precisionFormats:[Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lkotlin/time/DurationJvmKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final getDurationAssertionsEnabled()Z
    .locals 1

    .line 0
    sget-boolean v0, Lkotlin/time/DurationJvmKt;->durationAssertionsEnabled:Z

    return v0
.end method
