.class Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->this$0:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    iput-object p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->val$context:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->val$context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
