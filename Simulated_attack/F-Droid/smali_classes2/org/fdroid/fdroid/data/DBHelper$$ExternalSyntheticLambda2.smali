.class public final synthetic Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/database/FDroidFixture;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final prePopulateDb(Lorg/fdroid/database/FDroidDatabase;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/data/DBHelper;->$r8$lambda$UE0KAMTt9cp6jhxm1JWocLkBjLA(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V

    return-void
.end method
