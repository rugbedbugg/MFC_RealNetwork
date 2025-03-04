.class public interface abstract Lorg/bouncycastle/mime/MimeParserListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;
.end method

.method public abstract object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
