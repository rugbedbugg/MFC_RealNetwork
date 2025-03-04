.class public final synthetic Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->$r8$lambda$jrIgrQotCSuJCxWgM-Mmpc_hasc(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p1

    return-object p1
.end method
