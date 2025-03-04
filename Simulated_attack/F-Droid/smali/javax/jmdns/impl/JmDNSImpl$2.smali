.class Ljavax/jmdns/impl/JmDNSImpl$2;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;

.field final synthetic val$event:Ljavax/jmdns/ServiceEvent;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V
    .locals 0

    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    iput-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->val$event:Ljavax/jmdns/ServiceEvent;

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1111
    throw v0
.end method
