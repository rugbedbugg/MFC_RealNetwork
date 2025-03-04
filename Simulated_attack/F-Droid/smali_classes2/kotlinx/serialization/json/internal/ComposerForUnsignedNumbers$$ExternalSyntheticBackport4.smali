.class public abstract synthetic Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers$$ExternalSyntheticBackport4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(II)Ljava/lang/String;
    .locals 4

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
