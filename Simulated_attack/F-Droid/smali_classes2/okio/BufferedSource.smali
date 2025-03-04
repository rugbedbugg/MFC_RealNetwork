.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "BufferedSource.kt"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# virtual methods
.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lokio/Buffer;
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteArray(J)[B
.end method

.method public abstract readByteString(J)Lokio/ByteString;
.end method

.method public abstract readFully(Lokio/Buffer;J)V
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
.end method

.method public abstract require(J)V
.end method

.method public abstract skip(J)V
.end method
