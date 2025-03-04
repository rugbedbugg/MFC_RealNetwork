.class public final Lorg/fdroid/index/v2/EntryVerifierKt;
.super Ljava/lang/Object;
.source "EntryVerifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "DATA_FILE_NAME",
        "",
        "FORBIDDEN_DIGESTS",
        "",
        "index_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DATA_FILE_NAME:Ljava/lang/String; = "entry.json"

.field private static final FORBIDDEN_DIGESTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MD5-Digest"

    const-string v1, "SHA1-Digest"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/fdroid/index/v2/EntryVerifierKt;->FORBIDDEN_DIGESTS:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getFORBIDDEN_DIGESTS$p()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v2/EntryVerifierKt;->FORBIDDEN_DIGESTS:Ljava/util/List;

    return-object v0
.end method
