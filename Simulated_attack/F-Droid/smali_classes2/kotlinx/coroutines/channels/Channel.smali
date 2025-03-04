.class public interface abstract Lkotlinx/coroutines/channels/Channel;
.super Ljava/lang/Object;
.source "Channel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/SendChannel;
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/Channel$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lkotlinx/coroutines/channels/Channel$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/coroutines/channels/Channel$Factory;->$$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

    sput-object v0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    return-void
.end method
