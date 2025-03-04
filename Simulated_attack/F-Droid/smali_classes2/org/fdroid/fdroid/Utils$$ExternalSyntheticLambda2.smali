.class public final synthetic Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Supplier;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Supplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Supplier;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Supplier;

    invoke-interface {v0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
