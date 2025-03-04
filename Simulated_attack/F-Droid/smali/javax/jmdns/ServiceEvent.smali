.class public abstract Ljavax/jmdns/ServiceEvent;
.super Ljava/util/EventObject;
.source "ServiceEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract getDNS()Ljavax/jmdns/JmDNS;
.end method

.method public abstract getInfo()Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
