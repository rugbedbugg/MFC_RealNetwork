.class public abstract Ljavax/jmdns/NetworkTopologyDiscovery$Factory;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/NetworkTopologyDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

.field private static volatile _instance:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;
    .locals 2

    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v0, :cond_1

    const-class v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;

    .line 124
    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v1, :cond_0

    .line 126
    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v1

    sput-object v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    return-object v0
.end method

.method protected static newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;
    .locals 1

    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 114
    new-instance v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    invoke-direct {v0}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;-><init>()V

    return-object v0
.end method
