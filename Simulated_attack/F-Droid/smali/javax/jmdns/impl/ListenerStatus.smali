.class public abstract Ljavax/jmdns/impl/ListenerStatus;
.super Ljava/lang/Object;
.source "ListenerStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;,
        Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    }
.end annotation


# instance fields
.field private final _listener:Ljava/util/EventListener;

.field private final _synch:Z


# direct methods
.method public constructor <init>(Ljava/util/EventListener;Z)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/ListenerStatus;->_listener:Ljava/util/EventListener;

    iput-boolean p2, p0, Ljavax/jmdns/impl/ListenerStatus;->_synch:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 280
    instance-of v0, p1, Ljavax/jmdns/impl/ListenerStatus;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast p1, Ljavax/jmdns/impl/ListenerStatus;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getListener()Ljava/util/EventListener;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus;->_listener:Ljava/util/EventListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 271
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSynchronous()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Ljavax/jmdns/impl/ListenerStatus;->_synch:Z

    return v0
.end method
