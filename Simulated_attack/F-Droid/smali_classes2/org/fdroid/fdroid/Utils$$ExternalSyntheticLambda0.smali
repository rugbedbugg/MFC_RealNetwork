.class public final synthetic Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->$r8$lambda$IFkUmii_BXhkOG7DYI8NXzNW-mo(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
