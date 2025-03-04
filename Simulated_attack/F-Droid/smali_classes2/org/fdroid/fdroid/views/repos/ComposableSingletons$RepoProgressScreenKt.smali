.class public final Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;
.super Ljava/lang/Object;
.source "RepoProgressScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;

    const/4 v0, 0x0

    .line 43
    sget-object v1, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt$lambda-1$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt$lambda-1$1;

    const v2, -0x73e686ce

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$app_fullRelease()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$RepoProgressScreenKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
