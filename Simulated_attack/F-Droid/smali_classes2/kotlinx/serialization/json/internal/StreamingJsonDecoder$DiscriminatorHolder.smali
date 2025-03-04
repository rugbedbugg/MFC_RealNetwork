.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;
.super Ljava/lang/Object;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiscriminatorHolder"
.end annotation


# instance fields
.field public discriminatorToSkip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;->discriminatorToSkip:Ljava/lang/String;

    return-void
.end method
