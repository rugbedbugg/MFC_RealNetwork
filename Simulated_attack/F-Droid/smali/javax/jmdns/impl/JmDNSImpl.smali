.class public Ljavax/jmdns/impl/JmDNSImpl;
.super Ljavax/jmdns/JmDNS;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;
.implements Ljavax/jmdns/impl/DNSTaskStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;,
        Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;,
        Ljavax/jmdns/impl/JmDNSImpl$Operation;
    }
.end annotation


# static fields
.field private static final _random:Ljava/util/Random;

.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private final _cache:Ljavax/jmdns/impl/DNSCache;

.field private final _executor:Ljava/util/concurrent/ExecutorService;

.field private volatile _group:Ljava/net/InetAddress;

.field private _incomingListener:Ljava/lang/Thread;

.field private final _ioLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _lastThrottleIncrement:J

.field private final _listeners:Ljava/util/List;

.field private _localHost:Ljavax/jmdns/impl/HostInfo;

.field private final _name:Ljava/lang/String;

.field private _plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

.field private final _recoverLock:Ljava/lang/Object;

.field private final _serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

.field final _serviceListeners:Ljava/util/concurrent/ConcurrentMap;

.field private final _serviceTypes:Ljava/util/concurrent/ConcurrentMap;

.field private final _services:Ljava/util/concurrent/ConcurrentMap;

.field protected _shutdown:Ljava/lang/Thread;

.field private volatile _socket:Ljava/net/MulticastSocket;

.field private _throttle:I

.field private final _typeListeners:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljavax/jmdns/impl/JmDNSImpl;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 338
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-direct {p0}, Ljavax/jmdns/JmDNS;-><init>()V

    .line 321
    new-instance v0, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v1, "JmDNS"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 343
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1773
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "JmDNS instance created"

    .line 398
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 403
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 405
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 407
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 408
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 410
    invoke-static {p1, p0, p2}, Ljavax/jmdns/impl/HostInfo;->newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/HostInfo;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    .line 423
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 424
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V

    .line 426
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startReaper()V

    return-void
.end method

.method private aRecordsLast(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 1505
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1508
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1506
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1511
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V
    .locals 7

    .line 936
    new-instance v0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    invoke-direct {v0, p2, p3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 937
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 938
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_1

    iget-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 940
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p3, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 941
    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v1, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 943
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/ServiceListener;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v1}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    :cond_0
    iget-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 946
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    :cond_1
    if-eqz p3, :cond_3

    .line 949
    monitor-enter p3

    .line 950
    :try_start_0
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 951
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 953
    :cond_2
    :goto_0
    monitor-exit p3

    goto :goto_2

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 956
    :cond_3
    :goto_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 957
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v1

    .line 958
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 959
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 960
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v3, v4, :cond_4

    .line 961
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 964
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-direct {v3, p0, v4, v5, v2}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 969
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/ServiceEvent;

    .line 970
    invoke-virtual {v0, p3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_4

    .line 973
    :cond_6
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    return-void
.end method

.method private closeMulticastSocket()V
    .locals 4

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "closeMulticastSocket()"

    .line 484
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 489
    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 493
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    .line 505
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 506
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 511
    :catch_2
    :cond_0
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_1
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_4
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "closeMulticastSocket() Close socket exception "

    .line 515
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    :cond_2
    return-void
.end method

.method private disposeServiceCollectors()V
    .locals 4

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "disposeServiceCollectors()"

    .line 2090
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 2091
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2092
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    if-eqz v2, :cond_0

    .line 2094
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2095
    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 2096
    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getRandom()Ljava/util/Random;
    .locals 1

    .line 0
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-object v0
.end method

.method private isOlderThanOneSecond(Ljavax/jmdns/impl/DNSRecord;J)Z
    .locals 4

    .line 1442
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getCreated()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr p2, v2

    cmp-long p1, v0, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z
    .locals 10

    .line 1148
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 1157
    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1, v2}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1158
    move-object v7, v4

    check-cast v7, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 1159
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v9}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_2
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    .line 1162
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1163
    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v8, v5

    .line 1164
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v5}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v8, v5

    const-string v4, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:{} s.server={} {} equals:{}"

    .line 1160
    invoke-interface {v3, v4, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$Factory;->getRegistry()Ljavax/jmdns/impl/NameRegister;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v3, v4, v5, v7}, Ljavax/jmdns/impl/NameRegister;->incrementName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    move v5, v6

    :cond_3
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1174
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceInfo;

    if-eqz v3, :cond_4

    if-eq v3, p1, :cond_4

    .line 1176
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$Factory;->getRegistry()Ljavax/jmdns/impl/NameRegister;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v3, v4, v5, v6}, Ljavax/jmdns/impl/NameRegister;->incrementName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-nez v5, :cond_0

    .line 1182
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    return p1
.end method

.method private openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V
    .locals 4

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const-string v0, "FF02::FB"

    .line 447
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const-string v0, "224.0.0.251"

    .line 449
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_2

    .line 453
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 464
    :cond_2
    new-instance v0, Ljava/net/MulticastSocket;

    sget v1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_3

    .line 465
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 466
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 467
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "Trying to joinGroup({}, {})"

    .line 469
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 472
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    goto :goto_1

    :cond_3
    sget-object p1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "Trying to joinGroup({})"

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 474
    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 475
    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    :goto_1
    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    const/16 v0, 0xff

    .line 478
    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    return-void
.end method

.method private start(Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljavax/jmdns/impl/SocketListener;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/SocketListener;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    .line 432
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 435
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 437
    :try_start_0
    new-instance v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-direct {v1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "start() Registration exception "

    .line 439
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2253
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2254
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2255
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method __recover()V
    .locals 4

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.recover() Cleanning up"

    .line 1811
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "RECOVERING"

    .line 1813
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeTimer()V

    .line 1818
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1821
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1822
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    const-wide/16 v1, 0x1388

    .line 1824
    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1827
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeStateTimer()V

    .line 1831
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1834
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "{}.recover() All is clean"

    .line 1835
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1837
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1841
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .line 1842
    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    goto :goto_0

    .line 1844
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->recoverState()Z

    .line 1847
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 1848
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".recover() Start services exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.recover() We are back!"

    .line 1852
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.recover() Could not recover we are Down!"

    .line 1855
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1856
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDelegate()Ljavax/jmdns/JmDNS$Delegate;

    :goto_2
    return-void
.end method

.method public addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 5

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 1197
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 1202
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 1203
    invoke-virtual {p2, v3}, Ljavax/jmdns/impl/DNSQuestion;->answeredBy(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0, v1}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1204
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-interface {p1, v4, v0, v1, v3}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 932
    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 527
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result p1

    return p1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 575
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    return-void
.end method

.method public cancelState()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 543
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->cancelState()Z

    move-result v0

    return v0
.end method

.method public cancelStateTimer()V
    .locals 2

    .line 1672
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelStateTimer()V

    return-void
.end method

.method public cancelTimer()V
    .locals 2

    .line 1663
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelTimer()V

    return-void
.end method

.method public cleanCache()V
    .locals 9

    .line 1875
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSCache;->logCachedContent()V

    .line 1877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1878
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1879
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 1881
    :try_start_0
    move-object v5, v4

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 1882
    invoke-virtual {v5, v0, v1}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1883
    sget-object v6, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {p0, v0, v1, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    sget-object v6, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v7, "Removing DNSEntry from cache: {}"

    .line 1884
    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1885
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    .line 1886
    :cond_1
    invoke-virtual {v5, v0, v1}, Ljavax/jmdns/impl/DNSRecord;->isStaleAndShouldBeRefreshed(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1887
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->incrementRefreshPercentage()V

    .line 1888
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1890
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1892
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/JmDNSImpl;->renewServiceCollector(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v6, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1896
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".Error while reaping records: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1897
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    .line 1907
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cancelling JmDNS: {}"

    .line 1911
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1915
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Canceling the timer"

    .line 1919
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelTimer()V

    .line 1923
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1924
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Wait for JmDNS cancel: {}"

    .line 1926
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x1388

    .line 1928
    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Canceling the state timer"

    .line 1931
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelStateTimer()V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 1935
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1938
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1942
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 1947
    :cond_1
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->disposeStarter(Ljavax/jmdns/impl/JmDNSImpl;)V

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "JmDNS closed."

    .line 1949
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 1951
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    return-void
.end method

.method public getCache()Ljavax/jmdns/impl/DNSCache;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    return-object v0
.end method

.method public getDelegate()Ljavax/jmdns/JmDNS$Delegate;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getGroup()Ljava/net/InetAddress;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 705
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLastThrottleIncrement()J
    .locals 2

    .line 0
    iget-wide v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    return-wide v0
.end method

.method public getLocalHost()Ljavax/jmdns/impl/HostInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 12

    move/from16 v9, p4

    .line 769
    new-instance v10, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 770
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    new-instance v7, Ljavax/jmdns/impl/DNSRecord$Pointer;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v0

    .line 771
    instance-of v1, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v1, :cond_9

    .line 772
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v0, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_9

    .line 776
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    .line 779
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v2, v3, v4, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v2

    .line 780
    instance-of v3, v2, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v3, :cond_0

    .line 781
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v2, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 783
    new-instance v11, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v2

    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v3

    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, v11

    move/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 784
    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v0

    .line 785
    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    .line 788
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v3, v2, v4, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 789
    instance-of v6, v4, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v6, :cond_1

    .line 790
    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v4, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 792
    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v8, v6, v5

    .line 793
    invoke-virtual {v0, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 795
    :cond_2
    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    goto :goto_1

    .line 799
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v3, v2, v4, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 800
    instance-of v4, v3, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v4, :cond_4

    .line 801
    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v3, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 803
    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v4

    array-length v6, v4

    move v7, v5

    :goto_4
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    .line 804
    invoke-virtual {v0, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 806
    :cond_5
    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    goto :goto_3

    .line 810
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v2

    .line 811
    instance-of v3, v2, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v3, :cond_7

    .line 812
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {v2, v9}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 814
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 817
    :cond_7
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_8

    .line 818
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 820
    :cond_8
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v10, v0

    :cond_9
    return-object v10
.end method

.method public getServiceTypes()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public getThrottle()I
    .locals 1

    .line 0
    iget v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 5

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} handle query: {}"

    .line 1525
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    add-long/2addr v0, v2

    .line 1529
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAllAnswers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1530
    invoke-virtual {v4, p0, v0, v1}, Ljavax/jmdns/impl/DNSRecord;->handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSIncoming;->append(Ljavax/jmdns/impl/DNSIncoming;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1539
    :cond_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    .line 1540
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isTruncated()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 1543
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->startResponder(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 1550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 1551
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAnswers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 1552
    invoke-virtual {p0, v0, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 1556
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    :cond_4
    return-void

    .line 1547
    :goto_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw p1
.end method

.method handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 8

    .line 1338
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1339
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v1

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "{} handle response: {}"

    .line 1340
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1343
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->isServicesDiscoveryMetaQuery()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->isDomainDiscoveryQuery()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1344
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->isUnique()Z

    move-result v2

    .line 1345
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} handle response cached record: {}"

    .line 1346
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 1355
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 1356
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1357
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 1358
    invoke-direct {p0, v5, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->isOlderThanOneSecond(Ljavax/jmdns/impl/DNSRecord;J)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v7, "setWillExpireSoon() on: {}"

    .line 1360
    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1362
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_7

    if-eqz v1, :cond_3

    .line 1369
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v0

    if-nez v0, :cond_2

    .line 1370
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Record is expired - setWillExpireSoon() on:\n\t{}"

    .line 1371
    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1372
    invoke-virtual {v3, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    goto :goto_2

    .line 1375
    :cond_2
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Record is expired - removeDNSEntry() on:\n\t{}"

    .line 1376
    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1377
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_2

    .line 1381
    :cond_3
    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSRecord;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1383
    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSEntry;->sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1384
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_1

    .line 1398
    :cond_4
    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSRecord;->resetTTL(Ljavax/jmdns/impl/DNSRecord;)V

    move-object p1, v3

    goto :goto_2

    .line 1387
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->isSingleValued()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Record (singleValued) has changed - replaceDNSEntry() on:\n\t{}\n\t{}"

    .line 1389
    invoke-interface {v2, v4, p1, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1390
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Ljavax/jmdns/impl/DNSCache;->replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_2

    .line 1393
    :cond_6
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Record (multiValue) has changed - addDNSEntry on:\n\t{}"

    .line 1394
    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1395
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 1404
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Record not cached - addDNSEntry on:\n\t{}"

    .line 1405
    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    .line 1412
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v2, v3, :cond_b

    .line 1415
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->isServicesDiscoveryMetaQuery()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v1, :cond_9

    .line 1418
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    :cond_9
    return-void

    .line 1422
    :cond_a
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1423
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-ne v0, v1, :cond_b

    .line 1424
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1429
    :cond_b
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-eq v0, v1, :cond_c

    .line 1430
    invoke-virtual {p0, p2, p3, p1, v0}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    :cond_c
    return-void
.end method

.method handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 7

    .line 1451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1456
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAllAnswers()Ljava/util/List;

    move-result-object p1

    .line 1457
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->aRecordsLast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1458
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1459
    invoke-virtual {p0, v4, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 1461
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1464
    :cond_0
    invoke-virtual {v4, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    .line 1462
    :cond_1
    :goto_1
    invoke-virtual {v4, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 1470
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    :cond_4
    return-void
.end method

.method handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 881
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 883
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    monitor-enter v0

    .line 887
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 888
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 890
    new-instance v3, Ljavax/jmdns/impl/JmDNSImpl$1;

    invoke-direct {v3, p0, v1, p1}, Ljavax/jmdns/impl/JmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 888
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public ioLock()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2286
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public ioUnlock()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2290
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public isAnnounced()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 615
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 591
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result p1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 631
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 623
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 647
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 639
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 599
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isProbing()Z

    move-result v0

    return v0
.end method

.method public purgeStateTimer()V
    .locals 2

    .line 1654
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeStateTimer()V

    return-void
.end method

.method public purgeTimer()V
    .locals 2

    .line 1645
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeTimer()V

    return-void
.end method

.method public recover()V
    .locals 5

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.recover()"

    .line 1779
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1782
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    .line 1788
    monitor-enter v0

    .line 1791
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".recover()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "{} thread {}"

    .line 1793
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1794
    new-instance v2, Ljavax/jmdns/impl/JmDNSImpl$6;

    invoke-direct {v2, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl$6;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1805
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method public recoverState()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 559
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->recoverState()Z

    move-result v0

    return v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .locals 2

    .line 999
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1002
    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1004
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1007
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A service information can only be registered once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1006
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1013
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 1016
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1017
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setServer(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1018
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1019
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 1021
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    :goto_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1022
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1023
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    goto :goto_1

    .line 1026
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "registerService() JmDNS registered service as {}"

    .line 1028
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1000
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This DNS is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerServiceType(Ljava/lang/String;)Z
    .locals 12

    .line 1086
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1087
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1088
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1090
    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v6, "{} registering service type: {} as: {}{}{}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 1095
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 p1, 0x2

    aput-object v2, v7, p1

    .line 1098
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, " subtype: "

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    const/4 v10, 0x3

    aput-object p1, v7, v10

    .line 1099
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    move-object p1, v0

    goto :goto_3

    :cond_3
    const-string p1, ""

    :goto_3
    const/4 v10, 0x4

    aput-object p1, v7, v10

    .line 1094
    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 1101
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "dns-sd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "in-addr.arpa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ip6.arpa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 1102
    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    invoke-direct {v1, v2}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    move p1, v8

    goto :goto_4

    :cond_4
    move p1, v9

    :goto_4
    if-eqz p1, :cond_6

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 1104
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1105
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v6, ""

    invoke-direct {v3, p0, v2, v6, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1106
    array-length v6, v1

    move v7, v9

    :goto_5
    if-ge v7, v6, :cond_6

    aget-object v10, v1, v7

    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 1107
    new-instance v11, Ljavax/jmdns/impl/JmDNSImpl$2;

    invoke-direct {v11, p0, v5, v3}, Ljavax/jmdns/impl/JmDNSImpl$2;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    move p1, v9

    .line 1117
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 1118
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    if-eqz v1, :cond_9

    .line 1119
    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1120
    monitor-enter v1

    .line 1121
    :try_start_0
    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1123
    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->add(Ljava/lang/String;)Z

    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 1124
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1125
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "._sub."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v3, p0, v0, v2, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1126
    array-length v0, p1

    :goto_6
    if-ge v9, v0, :cond_8

    aget-object v2, p1, v9

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 1127
    new-instance v4, Ljavax/jmdns/impl/JmDNSImpl$3;

    invoke-direct {v4, p0, v5, v3}, Ljavax/jmdns/impl/JmDNSImpl$3;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_7
    move v8, p1

    .line 1136
    :cond_8
    monitor-exit v1

    move p1, v8

    goto :goto_8

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_8
    return p1
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 583
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    return-void
.end method

.method public removeListener(Ljavax/jmdns/impl/DNSListener;)V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 1217
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 3

    .line 981
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 982
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 984
    monitor-enter v0

    .line 985
    :try_start_0
    new-instance v1, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 986
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 987
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 988
    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 990
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public renewServiceCollector(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 1227
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 3

    .line 752
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cleanCache()V

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 755
    new-instance v2, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v2, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 756
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceListener;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 760
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object p1

    .line 762
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    return-object p1
.end method

.method public respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 1

    .line 1561
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1567
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    return-void

    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw p1
.end method

.method public revertState()Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 535
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->revertState()Z

    move-result v0

    return v0
.end method

.method public send(Ljavax/jmdns/impl/DNSOutgoing;)V
    .locals 5

    .line 1607
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1611
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getDestination()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getDestination()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1613
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getDestination()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 1616
    sget v1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    .line 1619
    :goto_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object p1

    .line 1620
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p1

    invoke-direct {v2, p1, v3, v0, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    sget-object p1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1622
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1624
    :try_start_0
    new-instance p1, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {p1, v2}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1625
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "send({}) JmDNS out:{}"

    .line 1626
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".send("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_2

    .line 1633
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1634
    invoke-virtual {p1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_2
    return-void
.end method

.method public setLastThrottleIncrement(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    return-void
.end method

.method public setThrottle(I)V
    .locals 0

    .line 0
    iput p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    return-void
.end method

.method public startAnnouncer()V
    .locals 2

    .line 1690
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startAnnouncer()V

    return-void
.end method

.method public startCanceler()V
    .locals 2

    .line 1708
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startCanceler()V

    return-void
.end method

.method public startProber()V
    .locals 2

    .line 1681
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startProber()V

    return-void
.end method

.method public startReaper()V
    .locals 2

    .line 1717
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startReaper()V

    return-void
.end method

.method public startRenewer()V
    .locals 2

    .line 1699
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startRenewer()V

    return-void
.end method

.method public startResponder(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 2

    .line 1753
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljavax/jmdns/impl/DNSTaskStarter;->startResponder(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 2

    .line 1726
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    return-void
.end method

.method public startServiceResolver(Ljava/lang/String;)V
    .locals 2

    .line 1744
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceResolver(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n"

    .line 1969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Local Host -----"

    .line 1970
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    .line 1971
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1972
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t---- Services -----"

    .line 1973
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1974
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v5, "\n\t\tService: "

    .line 1975
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1980
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Types ----"

    .line 1981
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 1982
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    const-string v5, "\n\t\tType: "

    .line 1983
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "no subtypes"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1988
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    .line 1989
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Service Collectors ----"

    .line 1991
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 1992
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v5, "\n\t\tService Collector: "

    .line 1993
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1998
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t---- Service Listeners ----"

    .line 1999
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 2000
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "\n\t\tService Listener: "

    .line 2001
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2006
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterAllServices()V
    .locals 6

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "unregisterAllServices()"

    .line 1055
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1057
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    if-eqz v1, :cond_0

    .line 1059
    move-object v2, v1

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Cancelling service info: {}"

    .line 1060
    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    goto :goto_0

    .line 1064
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1066
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1067
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    if-eqz v2, :cond_2

    .line 1069
    move-object v3, v2

    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1070
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v5, "Wait for service info cancel: {}"

    .line 1072
    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v4, 0x1388

    .line 1073
    invoke-virtual {v3, v4, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1074
    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .locals 3

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1036
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    .line 1040
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    const-wide/16 v1, 0x1388

    .line 1041
    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 1043
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "unregisterService() JmDNS {} unregistered service as {}"

    .line 1044
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 1046
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} removing unregistered service info: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .locals 5

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 1248
    monitor-enter v0

    .line 1249
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSListener;

    .line 1252
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_0

    .line 1265
    :cond_0
    sget-object p1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    .line 1266
    invoke-virtual {p3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    .line 1267
    invoke-virtual {p3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1270
    :cond_1
    invoke-virtual {p3, p0}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object p1

    .line 1271
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1273
    :cond_2
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p2, v0, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object p2

    .line 1274
    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1275
    new-instance v0, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    move-object p1, v0

    :cond_3
    iget-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 1279
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 1282
    monitor-enter p2

    .line 1283
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1284
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1286
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    sget-object p2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.updating record for event: {} list {} operation: {}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1289
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    const/4 p3, 0x1

    aput-object p1, v2, p3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v4, 0x3

    aput-object p4, v2, v4

    .line 1288
    invoke-interface {p2, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 1297
    sget-object p2, Ljavax/jmdns/impl/JmDNSImpl$7;->$SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p2, p2, p4

    if-eq p2, p3, :cond_7

    if-eq p2, v3, :cond_5

    goto :goto_4

    .line 1314
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1315
    invoke-virtual {p3}, Ljavax/jmdns/impl/ListenerStatus;->isSynchronous()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 1316
    invoke-virtual {p3, p1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_2

    :cond_6
    iget-object p4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 1318
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$5;

    invoke-direct {v0, p0, p3, p1}, Ljavax/jmdns/impl/JmDNSImpl$5;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 1299
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1300
    invoke-virtual {p3}, Ljavax/jmdns/impl/ListenerStatus;->isSynchronous()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 1301
    invoke-virtual {p3, p1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_3

    :cond_8
    iget-object p4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 1303
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$4;

    invoke-direct {v0, p0, p3, p1}, Ljavax/jmdns/impl/JmDNSImpl$4;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_9
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 1250
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public waitForCanceled(J)Z
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 663
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForCanceled(J)Z

    move-result p1

    return p1
.end method
