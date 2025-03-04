.class final Lorg/fdroid/database/AppListItem$antiFeaturesDecoded$2;
.super Lkotlin/jvm/internal/Lambda;
.source "App.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppListItem;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppListItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppListItem$antiFeaturesDecoded$2;->this$0:Lorg/fdroid/database/AppListItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lorg/fdroid/database/AppListItem$antiFeaturesDecoded$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 2

    .line 315
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    iget-object v1, p0, Lorg/fdroid/database/AppListItem$antiFeaturesDecoded$2;->this$0:Lorg/fdroid/database/AppListItem;

    invoke-virtual {v1}, Lorg/fdroid/database/AppListItem;->getAntiFeatures$database_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
