.class public interface abstract Lorg/bouncycastle/est/ESTSourceConnectionListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onConnection(Lorg/bouncycastle/est/Source;Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/est/Source<",
            "TT;>;",
            "Lorg/bouncycastle/est/ESTRequest;",
            ")",
            "Lorg/bouncycastle/est/ESTRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
