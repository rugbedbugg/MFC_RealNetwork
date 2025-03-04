.class public final Landroidx/compose/ui/text/platform/URLSpanCache;
.super Ljava/lang/Object;
.source "URLSpanCache.kt"


# instance fields
.field private final spansByAnnotation:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->spansByAnnotation:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final toURLSpan(Landroidx/compose/ui/text/UrlAnnotation;)Landroid/text/style/URLSpan;
    .locals 3

    const-string v0, "urlAnnotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->spansByAnnotation:Ljava/util/WeakHashMap;

    .line 47
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/UrlAnnotation;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    check-cast v1, Landroid/text/style/URLSpan;

    return-object v1
.end method
