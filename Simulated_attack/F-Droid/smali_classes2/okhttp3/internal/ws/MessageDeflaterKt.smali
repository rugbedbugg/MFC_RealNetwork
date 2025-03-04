.class public abstract Lokhttp3/internal/ws/MessageDeflaterKt;
.super Ljava/lang/Object;
.source "MessageDeflater.kt"


# static fields
.field private static final EMPTY_DEFLATE_BLOCK:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "000000ffff"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/MessageDeflaterKt;->EMPTY_DEFLATE_BLOCK:Lokio/ByteString;

    return-void
.end method

.method public static final synthetic access$getEMPTY_DEFLATE_BLOCK$p()Lokio/ByteString;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/internal/ws/MessageDeflaterKt;->EMPTY_DEFLATE_BLOCK:Lokio/ByteString;

    return-object v0
.end method
