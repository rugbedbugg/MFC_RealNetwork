.class public abstract Lkotlin/reflect/jvm/internal/ReflectProperties$Val;
.super Ljava/lang/Object;
.source "ReflectProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/ReflectProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Val"
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ReflectProperties$Val;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    if-nez p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/ReflectProperties$Val;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final getValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$Val;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract invoke()Ljava/lang/Object;
.end method

.method protected unescape(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectProperties$Val;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
