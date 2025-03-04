.class public final synthetic Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/FDroidDatabase;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/FDroidDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/FDroidDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/FDroidDatabase;

    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->clearAllAppData()V

    return-void
.end method
