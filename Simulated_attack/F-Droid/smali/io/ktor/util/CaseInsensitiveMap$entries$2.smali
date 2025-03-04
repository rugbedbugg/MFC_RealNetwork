.class final Lio/ktor/util/CaseInsensitiveMap$entries$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CaseInsensitiveMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/CaseInsensitiveMap;->getEntries()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/CaseInsensitiveMap$entries$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap$entries$2;

    invoke-direct {v0}, Lio/ktor/util/CaseInsensitiveMap$entries$2;-><init>()V

    sput-object v0, Lio/ktor/util/CaseInsensitiveMap$entries$2;->INSTANCE:Lio/ktor/util/CaseInsensitiveMap$entries$2;

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

    .line 46
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lio/ktor/util/CaseInsensitiveMap$entries$2;->invoke(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lio/ktor/util/Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/ktor/util/Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
