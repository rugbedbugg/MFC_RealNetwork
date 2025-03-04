.class public final Lio/ktor/utils/io/bits/Memory$Companion;
.super Ljava/lang/Object;
.source "MemoryJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/bits/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/utils/io/bits/Memory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;
    .locals 1

    .line 102
    invoke-static {}, Lio/ktor/utils/io/bits/Memory;->access$getEmpty$cp()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
