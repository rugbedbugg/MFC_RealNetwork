.class public final Lokhttp3/internal/connection/RealCall$timeout$1;
.super Lokio/AsyncTimeout;
.source "RealCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/connection/RealCall;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/RealCall;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 70
    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 72
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    return-void
.end method
