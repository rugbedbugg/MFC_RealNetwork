.class public abstract Landroidx/room/TransactionElement;
.super Ljava/lang/Object;
.source "RoomDatabaseExt.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/TransactionElement$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/room/TransactionElement$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/room/TransactionElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/TransactionElement$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    return-void
.end method
