.class final Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigurationCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/collector/ConfigurationCollector;->getValueArrays()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;

    invoke-direct {v0}, Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;-><init>()V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;->INSTANCE:Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;

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
.method public final invoke(Lorg/acra/collector/ConfigurationCollector$Prefix;)Landroid/util/SparseArray;
    .locals 0

    .line 110
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-virtual {p0, p1}, Lorg/acra/collector/ConfigurationCollector$getValueArrays$5;->invoke(Lorg/acra/collector/ConfigurationCollector$Prefix;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method
