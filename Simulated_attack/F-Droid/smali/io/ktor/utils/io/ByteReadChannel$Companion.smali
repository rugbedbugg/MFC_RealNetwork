.class public final Lio/ktor/utils/io/ByteReadChannel$Companion;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

.field private static final Empty$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-direct {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;-><init>()V

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->$$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;->INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$2;

    .line 252
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->Empty$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->Empty$delegate:Lkotlin/Lazy;

    .line 252
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method
