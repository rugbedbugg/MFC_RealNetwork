.class public final synthetic Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/index/v1/IndexV1Verifier;

.field public final synthetic f$1:Lorg/fdroid/index/v1/IndexV1Updater;

.field public final synthetic f$2:Lorg/fdroid/database/Repository;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/v1/IndexV1Verifier;

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/index/v1/IndexV1Updater;

    iput-object p3, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/Repository;

    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/v1/IndexV1Verifier;

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/index/v1/IndexV1Updater;

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/Repository;

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/index/v1/IndexV1Updater;->$r8$lambda$UP-MUK_gwTNuPMXCw_1jUeTDGWQ(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V

    return-void
.end method
