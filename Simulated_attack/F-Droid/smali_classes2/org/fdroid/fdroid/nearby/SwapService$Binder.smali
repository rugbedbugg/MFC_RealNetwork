.class public Lorg/fdroid/fdroid/nearby/SwapService$Binder;
.super Landroid/os/Binder;
.source "SwapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Binder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapService;


# direct methods
.method public constructor <init>(Lorg/fdroid/fdroid/nearby/SwapService;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$Binder;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 361
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/fdroid/fdroid/nearby/SwapService;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService$Binder;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    return-object v0
.end method
