.class public Lorg/fdroid/fdroid/net/DnsWithCache;
.super Ljava/lang/Object;
.source "DnsWithCache.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static final DELAY_TIME:I = 0x1

.field private static final DELAY_UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private volatile cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final delayedWrite:Ljava/lang/Runnable;

.field private final writeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile writeScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$Cz1Jg-QW-OpYgrkWl7IQKpzwlVo(Lorg/fdroid/fdroid/net/DnsWithCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/net/DnsWithCache;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/fdroid/fdroid/net/DnsWithCache;->DELAY_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeScheduled:Z

    .line 23
    new-instance v0, Lorg/fdroid/fdroid/net/DnsWithCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/net/DnsWithCache$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/net/DnsWithCache;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->delayedWrite:Ljava/lang/Runnable;

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getDnsCache()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 24
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/Preferences;->setDnsCache(Ljava/util/HashMap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeScheduled:Z

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isDnsCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    :goto_0
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 59
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0}, Lorg/fdroid/fdroid/net/DnsWithCache;->updateCacheAndPrefs(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public updateCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->cache:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCacheAndPrefs(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/DnsWithCache;->updateCache(Ljava/lang/String;Ljava/util/List;)V

    iget-boolean p1, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeScheduled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeScheduled:Z

    iget-object p1, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->writeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p2, p0, Lorg/fdroid/fdroid/net/DnsWithCache;->delayedWrite:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1

    sget-object v2, Lorg/fdroid/fdroid/net/DnsWithCache;->DELAY_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 40
    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
