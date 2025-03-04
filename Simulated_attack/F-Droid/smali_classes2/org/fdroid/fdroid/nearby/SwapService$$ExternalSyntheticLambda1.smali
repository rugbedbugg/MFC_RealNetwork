.class public final synthetic Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/database/Repository;

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->$r8$lambda$ULAvyR4Y-NRyF0R8z5yEWJdRNiI(Lorg/fdroid/database/Repository;)V

    return-void
.end method
