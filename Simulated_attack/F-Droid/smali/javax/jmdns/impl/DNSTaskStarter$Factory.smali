.class public final Ljavax/jmdns/impl/DNSTaskStarter$Factory;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

.field private static volatile _instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;


# instance fields
.field private final _instances:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;
    .locals 2

    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v0, :cond_1

    const-class v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    .line 112
    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    invoke-direct {v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;-><init>()V

    sput-object v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 116
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
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    return-object v0
.end method

.method protected static newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    return-object v0
.end method


# virtual methods
.method public disposeStarter(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 144
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 131
    invoke-static {p1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 132
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    :cond_0
    return-object v0
.end method
