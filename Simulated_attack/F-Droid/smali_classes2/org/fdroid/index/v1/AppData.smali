.class final Lorg/fdroid/index/v1/AppData;
.super Ljava/lang/Object;
.source "IndexV1StreamProcessor.kt"


# instance fields
.field private final antiFeatures:Ljava/util/Map;

.field private final categories:Ljava/util/List;

.field private final suggestedVersionCode:Ljava/lang/Long;

.field private final whatsNew:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V
    .locals 1

    const-string v0, "antiFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v1/AppData;->antiFeatures:Ljava/util/Map;

    iput-object p2, p0, Lorg/fdroid/index/v1/AppData;->whatsNew:Ljava/util/Map;

    iput-object p3, p0, Lorg/fdroid/index/v1/AppData;->suggestedVersionCode:Ljava/lang/Long;

    iput-object p4, p0, Lorg/fdroid/index/v1/AppData;->categories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAntiFeatures()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppData;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final getCategories()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppData;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final getSuggestedVersionCode()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppData;->suggestedVersionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final getWhatsNew()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/AppData;->whatsNew:Ljava/util/Map;

    return-object v0
.end method
