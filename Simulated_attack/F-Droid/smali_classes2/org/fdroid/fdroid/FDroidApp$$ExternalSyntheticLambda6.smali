.class public final synthetic Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/FDroidDatabase;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/FDroidDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda6;->f$0:Lorg/fdroid/database/FDroidDatabase;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda6;->f$0:Lorg/fdroid/database/FDroidDatabase;

    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->$r8$lambda$4gGFjden3Wa7uzJiqU2-N0wuof8(Lorg/fdroid/database/FDroidDatabase;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
