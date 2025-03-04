.class public final synthetic Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/FDroidDatabase;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;->f$0:Lorg/fdroid/database/FDroidDatabase;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;->f$0:Lorg/fdroid/database/FDroidDatabase;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/data/DBHelper;->$r8$lambda$r8sgXjPZWSRYtvjpqzxpZtMvSyo(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V

    return-void
.end method
