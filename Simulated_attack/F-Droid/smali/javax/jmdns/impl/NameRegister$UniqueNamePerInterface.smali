.class public Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;
.super Ljavax/jmdns/impl/NameRegister$BaseRegister;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueNamePerInterface"
.end annotation


# instance fields
.field private final _hostNames:Ljava/util/concurrent/ConcurrentMap;

.field private final _serviceNames:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljavax/jmdns/impl/NameRegister$BaseRegister;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;->_hostNames:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;->_serviceNames:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public incrementName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;
    .locals 0

    .line 134
    sget-object p1, Ljavax/jmdns/impl/NameRegister$1;->$SwitchMap$javax$jmdns$impl$NameRegister$NameType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    return-object p2

    .line 138
    :cond_0
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$BaseRegister;->incrementNameWithParentesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$BaseRegister;->incrementNameWithDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
