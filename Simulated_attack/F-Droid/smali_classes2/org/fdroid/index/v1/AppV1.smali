.class public final Lorg/fdroid/index/v1/AppV1;
.super Ljava/lang/Object;
.source "AppV1.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v1/AppV1$$serializer;,
        Lorg/fdroid/index/v1/AppV1$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008H\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u008f\u00012\u00020\u0001:\u0004\u008e\u0001\u008f\u0001B\u00ed\u0002\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010#\u001a\u0004\u0018\u00010 \u0012\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%\u0012\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010(\u001a\u0004\u0018\u00010)\u00a2\u0006\u0002\u0010*B\u008b\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001d\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\"\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010 \u0012\u0016\u0008\u0002\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%\u0012\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010+J\u000f\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000f\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010`\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010 H\u00c6\u0003\u00a2\u0006\u0002\u0010-J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010d\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010e\u001a\u0004\u0018\u00010 H\u00c6\u0003\u00a2\u0006\u0002\u0010-J\u000b\u0010f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0017\u0010g\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%H\u00c6\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0098\u0003\u0010o\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00062\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\"\u001a\u00020\u00062\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010 2\u0016\u0008\u0002\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010pJ\u0013\u0010q\u001a\u00020r2\u0008\u0010s\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003JD\u0010t\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010%j\u0004\u0018\u0001`u2\u0008\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020\u00062\u0014\u0010x\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0006\u0012\u0004\u0018\u00010\u00060yH\u0002J\t\u0010z\u001a\u00020\u0003H\u00d6\u0001J\u001a\u0010{\u001a\u00020|2\u0008\u0010}\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010w\u001a\u00020\u0006J\t\u0010~\u001a\u00020\u0006H\u00d6\u0001J-\u0010\u007f\u001a\u00030\u0080\u00012\u0007\u0010\u0081\u0001\u001a\u00020\u00002\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u0001H\u00c1\u0001\u00a2\u0006\u0003\u0008\u0086\u0001J\\\u0010\u0087\u0001\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00010\u0005\u0018\u00010%j\u0005\u0018\u0001`\u0089\u0001*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0007\u0010\u008a\u0001\u001a\u00020\u00062\u001a\u0010x\u001a\u0016\u0012\u0004\u0012\u00020&\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050yH\u0002JG\u0010\u008b\u0001\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0005\u0012\u00030\u0088\u0001\u0018\u00010%j\u0005\u0018\u0001`\u008c\u0001*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0014\u0010x\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0006\u0012\u0004\u0018\u00010\u00060yH\u0002JE\u0010\u008d\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010%j\u0004\u0018\u0001`u*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0014\u0010x\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0006\u0012\u0004\u0018\u00010\u00060yH\u0002R\u0015\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\n\n\u0002\u0010.\u001a\u0004\u0008,\u0010-R\u0019\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00100R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00103R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00103R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00103R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00103R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00103R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00100R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00103R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u00103R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u00103R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u00103R\u0013\u0010!\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00103R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u00103R\u0015\u0010#\u001a\u0004\u0018\u00010 \u00a2\u0006\n\n\u0002\u0010.\u001a\u0004\u0008@\u0010-R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u00103R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u00103R\u0011\u0010\u001d\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u00103R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u00103R\u001f\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&\u0018\u00010%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u00103R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u00103R\u0011\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u00103R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u00103R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u00103R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u00103R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u00103R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u00103R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u00103\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lorg/fdroid/index/v1/AppV1;",
        "",
        "seen1",
        "",
        "categories",
        "",
        "",
        "antiFeatures",
        "summary",
        "description",
        "changelog",
        "translation",
        "issueTracker",
        "sourceCode",
        "binaries",
        "name",
        "authorName",
        "authorEmail",
        "authorWebSite",
        "authorPhone",
        "donate",
        "liberapayID",
        "liberapay",
        "openCollective",
        "bitcoin",
        "litecoin",
        "flattrID",
        "suggestedVersionName",
        "suggestedVersionCode",
        "license",
        "webSite",
        "added",
        "",
        "icon",
        "packageName",
        "lastUpdated",
        "localized",
        "",
        "Lorg/fdroid/index/v1/Localized;",
        "allowedAPKSigningKeys",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)V",
        "getAdded",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getAllowedAPKSigningKeys",
        "()Ljava/util/List;",
        "getAntiFeatures",
        "getAuthorEmail",
        "()Ljava/lang/String;",
        "getAuthorName",
        "getAuthorPhone",
        "getAuthorWebSite",
        "getBinaries",
        "getBitcoin",
        "getCategories",
        "getChangelog",
        "getDescription",
        "getDonate",
        "getFlattrID",
        "getIcon",
        "getIssueTracker",
        "getLastUpdated",
        "getLiberapay",
        "getLiberapayID",
        "getLicense",
        "getLitecoin",
        "getLocalized",
        "()Ljava/util/Map;",
        "getName",
        "getOpenCollective",
        "getPackageName",
        "getSourceCode",
        "getSuggestedVersionCode",
        "getSuggestedVersionName",
        "getSummary",
        "getTranslation",
        "getWebSite",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)Lorg/fdroid/index/v1/AppV1;",
        "equals",
        "",
        "other",
        "getLocalizedTextV2",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "s",
        "locale",
        "selector",
        "Lkotlin/Function1;",
        "hashCode",
        "toMetadataV2",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "preferredSigner",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$index_release",
        "toLocalizedFileListV2",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileListV2;",
        "kind",
        "toLocalizedFileV2",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "toLocalizedTextV2",
        "$serializer",
        "Companion",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/fdroid/index/v1/AppV1$Companion;


# instance fields
.field private final added:Ljava/lang/Long;

.field private final allowedAPKSigningKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final antiFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final authorEmail:Ljava/lang/String;

.field private final authorName:Ljava/lang/String;

.field private final authorPhone:Ljava/lang/String;

.field private final authorWebSite:Ljava/lang/String;

.field private final binaries:Ljava/lang/String;

.field private final bitcoin:Ljava/lang/String;

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final changelog:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final donate:Ljava/lang/String;

.field private final flattrID:Ljava/lang/String;

.field private final icon:Ljava/lang/String;

.field private final issueTracker:Ljava/lang/String;

.field private final lastUpdated:Ljava/lang/Long;

.field private final liberapay:Ljava/lang/String;

.field private final liberapayID:Ljava/lang/String;

.field private final license:Ljava/lang/String;

.field private final litecoin:Ljava/lang/String;

.field private final localized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final openCollective:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final sourceCode:Ljava/lang/String;

.field private final suggestedVersionCode:Ljava/lang/String;

.field private final suggestedVersionName:Ljava/lang/String;

.field private final summary:Ljava/lang/String;

.field private final translation:Ljava/lang/String;

.field private final webSite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/fdroid/index/v1/AppV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v1/AppV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v1/AppV1;->Companion:Lorg/fdroid/index/v1/AppV1$Companion;

    const/16 v0, 0x1f

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 13
    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lorg/fdroid/index/v1/Localized$$serializer;->INSTANCE:Lorg/fdroid/index/v1/Localized$$serializer;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v1/AppV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4

    move-object v0, p0

    move v1, p1

    const/high16 v2, 0x8800000

    and-int v3, v1, v2

    if-eq v2, v3, :cond_0

    .line 13
    sget-object v3, Lorg/fdroid/index/v1/AppV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/AppV1$$serializer;

    invoke-virtual {v3}, Lorg/fdroid/index/v1/AppV1$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v2, p2

    goto :goto_0

    :goto_1
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    goto :goto_3

    :cond_2
    move-object v2, p3

    goto :goto_2

    :goto_3
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object v2, p4

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    :goto_4
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_4

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    goto :goto_5

    :cond_4
    move-object v2, p5

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    :goto_5
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_5

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v2, p6

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    :goto_6
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_6

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v2, p7

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    :goto_7
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_7

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    goto :goto_8

    :cond_7
    move-object v2, p8

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    :goto_8
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_8

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v2, p9

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    :goto_9
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_9

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, p10

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    :goto_a
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_a

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p11

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    :goto_b
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_b

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object/from16 v2, p12

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    :goto_c
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_c

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object/from16 v2, p13

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    :goto_d
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_d

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    goto :goto_e

    :cond_d
    move-object/from16 v2, p14

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    :goto_e
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_e

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object/from16 v2, p15

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    :goto_f
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_f

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    goto :goto_10

    :cond_f
    move-object/from16 v2, p16

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    :goto_10
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_10

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object/from16 v2, p17

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    :goto_11
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    goto :goto_12

    :cond_11
    move-object/from16 v2, p18

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    :goto_12
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-nez v2, :cond_12

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object/from16 v2, p19

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    :goto_13
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object/from16 v2, p20

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    :goto_14
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-nez v2, :cond_14

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object/from16 v2, p21

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    :goto_15
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-nez v2, :cond_15

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    goto :goto_16

    :cond_15
    move-object/from16 v2, p22

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    :goto_16
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-nez v2, :cond_16

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    goto :goto_17

    :cond_16
    move-object/from16 v2, p23

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    :goto_17
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-nez v2, :cond_17

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    :goto_18
    move-object/from16 v2, p25

    goto :goto_19

    :cond_17
    move-object/from16 v2, p24

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    goto :goto_18

    :goto_19
    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_18

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    move-object/from16 v2, p26

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    :goto_1a
    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    if-nez v2, :cond_19

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    goto :goto_1b

    :cond_19
    move-object/from16 v2, p27

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    :goto_1b
    const/high16 v2, 0x4000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1a

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    :goto_1c
    move-object/from16 v2, p29

    goto :goto_1d

    :cond_1a
    move-object/from16 v2, p28

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    goto :goto_1c

    :goto_1d
    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    const/high16 v2, 0x10000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1b

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    goto :goto_1e

    :cond_1b
    move-object/from16 v2, p30

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    :goto_1e
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1c

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    goto :goto_1f

    :cond_1c
    move-object/from16 v2, p31

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    :goto_1f
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_1d

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    goto :goto_20

    :cond_1d
    move-object/from16 v1, p32

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    :goto_20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p24

    move-object/from16 v4, p28

    const-string v5, "categories"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "antiFeatures"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "license"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    iput-object v2, v0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    iput-object v3, v0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    move-object/from16 v1, p27

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    iput-object v4, v0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    move-object/from16 v1, p30

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    move-object/from16 v1, p31

    iput-object v1, v0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v11, v2

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v13, v2

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v14, v2

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object v15, v2

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    move-object/from16 v16, v2

    goto :goto_d

    :cond_d
    move-object/from16 v16, p14

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object/from16 v17, v2

    goto :goto_e

    :cond_e
    move-object/from16 v17, p15

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v18, v2

    goto :goto_f

    :cond_f
    move-object/from16 v18, p16

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v19, v2

    goto :goto_10

    :cond_10
    move-object/from16 v19, p17

    :goto_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v20, v2

    goto :goto_11

    :cond_11
    move-object/from16 v20, p18

    :goto_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v21, v2

    goto :goto_12

    :cond_12
    move-object/from16 v21, p19

    :goto_12
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v22, v2

    goto :goto_13

    :cond_13
    move-object/from16 v22, p20

    :goto_13
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move-object/from16 v23, v2

    goto :goto_14

    :cond_14
    move-object/from16 v23, p21

    :goto_14
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move-object/from16 v24, v2

    goto :goto_15

    :cond_15
    move-object/from16 v24, p22

    :goto_15
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    move-object/from16 v25, v2

    goto :goto_16

    :cond_16
    move-object/from16 v25, p23

    :goto_16
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    move-object/from16 v27, v2

    goto :goto_17

    :cond_17
    move-object/from16 v27, p25

    :goto_17
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    move-object/from16 v28, v2

    goto :goto_18

    :cond_18
    move-object/from16 v28, p26

    :goto_18
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    move-object/from16 v29, v2

    goto :goto_19

    :cond_19
    move-object/from16 v29, p27

    :goto_19
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    move-object/from16 v31, v2

    goto :goto_1a

    :cond_1a
    move-object/from16 v31, p29

    :goto_1a
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    move-object/from16 v32, v2

    goto :goto_1b

    :cond_1b
    move-object/from16 v32, p30

    :goto_1b
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    move-object/from16 v33, v2

    goto :goto_1c

    :cond_1c
    move-object/from16 v33, p31

    :goto_1c
    move-object/from16 v2, p0

    move-object/from16 v26, p24

    move-object/from16 v30, p28

    .line 14
    invoke-direct/range {v2 .. v33}, Lorg/fdroid/index/v1/AppV1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v1/AppV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v1/AppV1;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/index/v1/AppV1;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v1, v1, v16

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p30, v15

    move-object/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lorg/fdroid/index/v1/AppV1;->copy(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)Lorg/fdroid/index/v1/AppV1;

    move-result-object v0

    return-object v0
.end method

.method private final getLocalizedTextV2(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0, p1, p3}, Lorg/fdroid/index/v1/AppV1;->toLocalizedTextV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_0
    new-instance v0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;

    invoke-direct {v0, p3, p0, p2}, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;-><init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/index/v1/AppV1;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/fdroid/index/IndexConverterKt;->mapValuesNotNull(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    new-instance v0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;

    invoke-direct {v0, p2, p0}, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;-><init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/index/v1/AppV1;)V

    invoke-static {p1, v0}, Lorg/fdroid/index/IndexConverterKt;->mapValuesNotNull(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final toLocalizedTextV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    new-instance v0, Lorg/fdroid/index/v1/AppV1$toLocalizedTextV2$1;

    invoke-direct {v0, p2}, Lorg/fdroid/index/v1/AppV1$toLocalizedTextV2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1, v0}, Lorg/fdroid/index/IndexConverterKt;->mapValuesNotNull(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic toMetadataV2$default(Lorg/fdroid/index/v1/AppV1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/index/v2/MetadataV2;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "en-US"

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v1/AppV1;->toMetadataV2(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/index/v2/MetadataV2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v1/AppV1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    sget-object v0, Lorg/fdroid/index/v1/AppV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    :goto_0
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    :goto_1
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_4
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_a
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_b
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_c
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_d
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_e
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_f
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_10
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_11

    :cond_22
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_11
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_12

    :cond_24
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    if-eqz v2, :cond_25

    :goto_12
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    const/16 v1, 0x13

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_13

    :cond_26
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    if-eqz v2, :cond_27

    :goto_13
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    const/16 v1, 0x14

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    if-eqz v1, :cond_29

    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    const/16 v1, 0x15

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    if-eqz v1, :cond_2b

    :goto_15
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    const/16 v1, 0x16

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_16

    :cond_2c
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    if-eqz v1, :cond_2d

    :goto_16
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2d
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x18

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    if-eqz v1, :cond_2f

    :goto_17
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    const/16 v1, 0x19

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_18

    :cond_30
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    if-eqz v1, :cond_31

    :goto_18
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    const/16 v3, 0x19

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_31
    const/16 v1, 0x1a

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_19

    :cond_32
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    if-eqz v1, :cond_33

    :goto_19
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    const/16 v1, 0x1b

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x1c

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_1a

    :cond_34
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    if-eqz v1, :cond_35

    :goto_1a
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    const/16 v3, 0x1c

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    const/16 v1, 0x1d

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_1b

    :cond_36
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    if-eqz v2, :cond_37

    :goto_1b
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_37
    const/16 v1, 0x1e

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_1c

    :cond_38
    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    if-eqz v2, :cond_39

    :goto_1c
    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component29()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    return-object v0
.end method

.method public final component31()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)Lorg/fdroid/index/v1/AppV1;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/index/v1/AppV1;"
        }
    .end annotation

    .line 0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    const-string v0, "categories"

    move-object/from16 v32, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiFeatures"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "license"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v33, Lorg/fdroid/index/v1/AppV1;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct/range {v0 .. v31}, Lorg/fdroid/index/v1/AppV1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;)V

    return-object v33
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v1/AppV1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v1/AppV1;

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAdded()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAllowedAPKSigningKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getAntiFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthorEmail()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorPhone()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorWebSite()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    return-object v0
.end method

.method public final getBinaries()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitcoin()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final getChangelog()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDonate()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlattrID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssueTracker()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUpdated()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLiberapay()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiberapayID()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicense()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    return-object v0
.end method

.method public final getLitecoin()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalized()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v1/Localized;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenCollective()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceCode()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggestedVersionCode()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggestedVersionName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranslation()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebSite()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    if-nez v1, :cond_1a

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    return v0
.end method

.method public final toMetadataV2(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/index/v2/MetadataV2;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "locale"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    sget-object v3, Lorg/fdroid/index/v1/AppV1$toMetadataV2$1;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$1;

    .line 51
    invoke-direct {v0, v2, v1, v3}, Lorg/fdroid/index/v1/AppV1;->getLocalizedTextV2(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v5

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    sget-object v3, Lorg/fdroid/index/v1/AppV1$toMetadataV2$2;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$2;

    .line 52
    invoke-direct {v0, v2, v1, v3}, Lorg/fdroid/index/v1/AppV1;->getLocalizedTextV2(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v6

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    sget-object v3, Lorg/fdroid/index/v1/AppV1$toMetadataV2$3;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$3;

    .line 53
    invoke-direct {v0, v2, v1, v3}, Lorg/fdroid/index/v1/AppV1;->getLocalizedTextV2(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v7

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v3

    :goto_0
    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_1

    :cond_1
    move-wide v10, v3

    :goto_1
    iget-object v12, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    iget-object v13, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    iget-object v14, v0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    move-object/from16 v20, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 68
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_2
    move-object/from16 v24, v4

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    move-object/from16 v26, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    move-object/from16 v28, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    move-object/from16 v29, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    move-object/from16 v30, v3

    sget-object v3, Lorg/fdroid/index/v1/AppV1$toMetadataV2$4;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$4;

    .line 75
    invoke-direct {v0, v4, v3}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 76
    new-instance v4, Lorg/fdroid/index/v2/FileV2;

    move-object/from16 v25, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v15

    const-string v15, "/icons/"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0xe

    const/16 v37, 0x0

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v37}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_4

    :cond_3
    move-object/from16 v25, v2

    move-object/from16 v38, v15

    const/16 v31, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v25, v2

    move-object/from16 v38, v15

    move-object/from16 v31, v3

    :goto_4
    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    sget-object v2, Lorg/fdroid/index/v1/AppV1$toMetadataV2$6;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$6;

    .line 77
    invoke-direct {v0, v1, v2}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v32

    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    sget-object v2, Lorg/fdroid/index/v1/AppV1$toMetadataV2$7;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$7;

    .line 78
    invoke-direct {v0, v1, v2}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v33

    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    sget-object v2, Lorg/fdroid/index/v1/AppV1$toMetadataV2$8;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$8;

    .line 79
    invoke-direct {v0, v1, v2}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v34

    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    sget-object v2, Lorg/fdroid/index/v1/AppV1$toMetadataV2$9;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$9;

    .line 80
    invoke-direct {v0, v1, v2}, Lorg/fdroid/index/v1/AppV1;->toLocalizedTextV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v35

    .line 81
    new-instance v1, Lorg/fdroid/index/v2/Screenshots;

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    const-string v3, "phoneScreenshots"

    sget-object v4, Lorg/fdroid/index/v1/AppV1$toMetadataV2$10;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$10;

    .line 82
    invoke-direct {v0, v2, v3, v4}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v40

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    const-string v3, "sevenInchScreenshots"

    sget-object v4, Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;

    .line 85
    invoke-direct {v0, v2, v3, v4}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v41

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    const-string v3, "tenInchScreenshots"

    sget-object v4, Lorg/fdroid/index/v1/AppV1$toMetadataV2$12;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$12;

    .line 88
    invoke-direct {v0, v2, v3, v4}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v42

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    const-string v3, "wearScreenshots"

    sget-object v4, Lorg/fdroid/index/v1/AppV1$toMetadataV2$13;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$13;

    .line 91
    invoke-direct {v0, v2, v3, v4}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v43

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    const-string v3, "tvScreenshots"

    sget-object v4, Lorg/fdroid/index/v1/AppV1$toMetadataV2$14;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$14;

    .line 94
    invoke-direct {v0, v2, v3, v4}, Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v44

    move-object/from16 v39, v1

    .line 81
    invoke-direct/range {v39 .. v44}, Lorg/fdroid/index/v2/Screenshots;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 97
    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->isNull()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    move-object/from16 v36, v1

    goto :goto_5

    :cond_5
    const/16 v36, 0x0

    .line 50
    :goto_5
    new-instance v1, Lorg/fdroid/index/v2/MetadataV2;

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object v4, v1

    move-object/from16 v15, v38

    move-object/from16 v16, v25

    move-object/from16 v18, p1

    move-object/from16 v19, v2

    move-object/from16 v25, v3

    invoke-direct/range {v4 .. v36}, Lorg/fdroid/index/v2/MetadataV2;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/fdroid/index/v2/Screenshots;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 33

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/fdroid/index/v1/AppV1;->categories:Ljava/util/List;

    iget-object v2, v0, Lorg/fdroid/index/v1/AppV1;->antiFeatures:Ljava/util/List;

    iget-object v3, v0, Lorg/fdroid/index/v1/AppV1;->summary:Ljava/lang/String;

    iget-object v4, v0, Lorg/fdroid/index/v1/AppV1;->description:Ljava/lang/String;

    iget-object v5, v0, Lorg/fdroid/index/v1/AppV1;->changelog:Ljava/lang/String;

    iget-object v6, v0, Lorg/fdroid/index/v1/AppV1;->translation:Ljava/lang/String;

    iget-object v7, v0, Lorg/fdroid/index/v1/AppV1;->issueTracker:Ljava/lang/String;

    iget-object v8, v0, Lorg/fdroid/index/v1/AppV1;->sourceCode:Ljava/lang/String;

    iget-object v9, v0, Lorg/fdroid/index/v1/AppV1;->binaries:Ljava/lang/String;

    iget-object v10, v0, Lorg/fdroid/index/v1/AppV1;->name:Ljava/lang/String;

    iget-object v11, v0, Lorg/fdroid/index/v1/AppV1;->authorName:Ljava/lang/String;

    iget-object v12, v0, Lorg/fdroid/index/v1/AppV1;->authorEmail:Ljava/lang/String;

    iget-object v13, v0, Lorg/fdroid/index/v1/AppV1;->authorWebSite:Ljava/lang/String;

    iget-object v14, v0, Lorg/fdroid/index/v1/AppV1;->authorPhone:Ljava/lang/String;

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->donate:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->liberapayID:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->liberapay:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->openCollective:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->bitcoin:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->litecoin:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->flattrID:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionName:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->suggestedVersionCode:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->license:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->webSite:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->added:Ljava/lang/Long;

    move-object/from16 v27, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->icon:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->packageName:Ljava/lang/String;

    move-object/from16 v29, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->lastUpdated:Ljava/lang/Long;

    move-object/from16 v30, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->localized:Ljava/util/Map;

    move-object/from16 v31, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/AppV1;->allowedAPKSigningKeys:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v15

    const-string v15, "AppV1(categories="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", antiFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changelog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issueTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorWebSite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", donate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", liberapayID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", liberapay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openCollective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitcoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", litecoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flattrID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", license="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webSite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowedAPKSigningKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
