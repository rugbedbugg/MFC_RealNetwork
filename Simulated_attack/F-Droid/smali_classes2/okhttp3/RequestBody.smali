.class public abstract Lokhttp3/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RequestBody$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/RequestBody$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lokhttp3/RequestBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/RequestBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/MediaType;
.end method

.method public isDuplex()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
.end method
