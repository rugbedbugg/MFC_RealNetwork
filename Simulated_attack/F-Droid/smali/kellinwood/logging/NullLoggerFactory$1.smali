.class Lkellinwood/logging/NullLoggerFactory$1;
.super Ljava/lang/Object;
.source "NullLoggerFactory.java"

# interfaces
.implements Lkellinwood/logging/LoggerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkellinwood/logging/NullLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public warning(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
