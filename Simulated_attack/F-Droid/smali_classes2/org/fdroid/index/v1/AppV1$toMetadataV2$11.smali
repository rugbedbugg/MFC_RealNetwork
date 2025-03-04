.class final Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;
.super Lkotlin/jvm/internal/Lambda;
.source "AppV1.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/v1/AppV1;->toMetadataV2(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/index/v2/MetadataV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;

    invoke-direct {v0}, Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;-><init>()V

    sput-object v0, Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;->INSTANCE:Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Lorg/fdroid/index/v1/Localized;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/AppV1$toMetadataV2$11;->invoke(Lorg/fdroid/index/v1/Localized;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/fdroid/index/v1/Localized;)Ljava/util/List;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lorg/fdroid/index/v1/Localized;->getSevenInchScreenshots()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
